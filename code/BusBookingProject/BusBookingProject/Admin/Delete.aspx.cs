using Org.BouncyCastle.Crypto.Generators;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject.Admin
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);

            try
            {
                con.Open();


                string DeleteRow = TextBox2.Text;


                string query = "DELETE FROM RouteDetails WHERE RouteID = @ri";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@ri", DeleteRow); // Bind the parameter

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {

                    Response.Write("<script>alert('Delete Successfully');</script>");
                    Response.Redirect("RouteDetails.aspx");
                }
                else
                {
                    Response.Write("<script>alert(' not found or not deleted.');</script>");
                    Response.Redirect("RouteDetails.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

       
    }
}