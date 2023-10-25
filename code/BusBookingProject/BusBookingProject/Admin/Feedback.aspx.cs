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
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ToString());
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "select * from Feedback";
            DataSet ds = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(ds);
            d1.DataSource = ds;
            d1.DataBind();
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ConnectionString;

            SqlConnection con = new SqlConnection(conStr);

            try
            {
                con.Open();


                string comment = TextBox2.Text;

                // Construct the SQL query with a parameterized query to prevent SQL injection
                string query = "DELETE FROM Feedback WHERE FeedbackId = @Comment";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Comment", comment); // Bind the parameter

                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    // The row was deleted successfully
                    Response.Write(" <script>alert('deleted successfully.');</script>");
                }
                else
                {
                    // No rows were affected, which means the CityName was not found
                    Response.Write("<script>alert('Not Found');</script>");
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