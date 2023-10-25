using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject.Admin
{
    public partial class BusDetailsReport : System.Web.UI.Page
    {
        #region Global Variable
        SqlConnection connString = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ToString());
        #endregion
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Session["UserName"] !=null)
                {
                    bindBusDetailsReport();
                }
                else
                {
                    Response.Redirect("AdminLogin.aspx");
                }
            }
        }

        private void bindBusDetailsReport()
        {
            DataSet dsGetData = new DataSet();
            SqlCommand sqlCmd = new SqlCommand();
            if (connString.State == ConnectionState.Closed)
            {
                connString.Open();
            }
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.CommandText = "ispGetBusDetailsForUpdation";
            sqlCmd.Connection = connString;
            SqlDataAdapter sda = new SqlDataAdapter(sqlCmd);
            sda.Fill(dsGetData);
            if(dsGetData.Tables[0].Rows.Count>0)
            {
                gdBusDetails.DataSource = dsGetData.Tables[0];
                gdBusDetails.DataBind();
            }
            else
            {
                gdBusDetails.DataSource = null;
                gdBusDetails.EmptyDataText = "No Records Found";
                gdBusDetails.DataBind();
            }
        }

        protected void gdBusDetails_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType==DataControlRowType.DataRow)
            {
                HyperLink klnikUpdate = (HyperLink)e.Row.FindControl("hlinkUpdate");
                HiddenField hdnBusID = (HiddenField)e.Row.FindControl("hdnPNRNo");
                HyperLink hlinkSchedule = (HyperLink)e.Row.FindControl("hlinkAddSchedule");
                HiddenField hdnRouteID = (HiddenField)e.Row.FindControl("hdnRouteID");
                klnikUpdate.NavigateUrl = "BusDetails.aspx?BusID=" + hdnBusID.Value;
                hlinkSchedule.NavigateUrl = "BusScheduleDetails.aspx?BusID=" + hdnBusID.Value + "&RouteID=" + hdnRouteID.Value;
            }
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear the user's session or authentication tokens.
            Session.Abandon(); // Clears the user's session.
                               // Optionally, you might also clear any authentication cookies if you're using them.

            // Redirect the user to the Default.aspx page after logout.
            Response.Redirect("Default.aspx");
        }
        private void DeleteData(int BusID)
        {
            int ResultCount = 0;
            SqlCommand sqlCmd = new SqlCommand();

            if (connString.State == ConnectionState.Closed)
            {
                connString.Open();
            }

            // Delete the bus details by BusID
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@BusID", BusID);
            sqlCmd.CommandText = "ispDeleteBusData";
            sqlCmd.Connection = connString;
            ResultCount = sqlCmd.ExecuteNonQuery();

            if (ResultCount == -1)
            {
                // Successful deletion
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bus Details has been deleted successfully')", true);
                bindBusDetailsReport(); // Refresh the GridView after deletion
            }
            else
            {
                // Error during deletion
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Deletion failed. Please contact your system administrator.')", true);
            }
        }
        protected void lnkDelete_Click(object sender, EventArgs e)
        {
            LinkButton lnkDelete = (LinkButton)sender;
            int busID = Convert.ToInt32(lnkDelete.CommandArgument);
            DeleteData(busID);
        }

    }
}