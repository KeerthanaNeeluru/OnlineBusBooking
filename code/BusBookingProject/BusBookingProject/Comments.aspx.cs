using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject
{
    public partial class Comments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LblMsg.Visible = true;
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ToString());
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                if (f1.HasFile)
                {
                    string fileName = f1.FileName.ToString();
                    string fileExtension = Path.GetExtension(fileName).ToLower();

                    if (fileExtension == ".jpg" || fileExtension == ".jpeg" || fileExtension == ".png" || fileExtension == ".gif")
                    {
                        f1.SaveAs(Request.PhysicalApplicationPath + "./image/" + f1.FileName.ToString());
                        string b1 = "image/" + f1.FileName.ToString();
                        cmd.CommandText = "insert into Feedback values(@un,@rating,@cmt,@b)";
                        cmd.Parameters.AddWithValue("@un", TextBox3.Text.ToString());
                        cmd.Parameters.AddWithValue("@rating", TextBox1.Text.ToString());
                        cmd.Parameters.AddWithValue("@cmt", TextBox2.Text.ToString());
                        cmd.Parameters.AddWithValue("@b", b1.ToString());

                        con.Open();
                        int nor = cmd.ExecuteNonQuery();

                        con.Close();
                        if (nor > 0)
                        {
                            Response.Write("<script>alert('Hurray Uploaded Successfully!');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Upload Failed');</script>");
                        }

                        // Process the file because it's a valid image format
                    }
                    else
                    {
                        // Display an error message to the user
                        LblMsg.Text += "Only .jpg, .jpeg, .png, or .gif files are allowed.";
                    }
                }
                else
                {
                    LblMsg.Text += "Please choose image file";
                    // Handle case where no file was selected
                }


            }
            catch (Exception ex)
            {
                LblMsg.Text = ex.ToString();
            }
        }
    }
}