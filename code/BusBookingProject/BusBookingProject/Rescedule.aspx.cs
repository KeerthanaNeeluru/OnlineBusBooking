using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject
{
    public partial class Rescedule : System.Web.UI.Page
    {
        private readonly string connString = ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            // You can add code here to initialize your page if needed
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string pnr = txtPNR.Text;

            if (!string.IsNullOrEmpty(pnr))
            {
                using (SqlConnection connection = new SqlConnection(connString))
                {
                    string query = "SELECT * FROM BookingMaster WHERE PNRNo = @PNR";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@PNR", pnr);

                        connection.Open();
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);

                            if (dataTable.Rows.Count > 0)
                            {
                                // Create table headers
                                TableRow headerRow = new TableRow();
                                headerRow.CssClass = "header-row"; // You can define a CSS class for styling

                                foreach (DataColumn column in dataTable.Columns)
                                {
                                    TableCell headerCell = new TableCell();
                                    headerCell.Text = column.ColumnName; // Set the header text
                                    headerRow.Cells.Add(headerCell);
                                }

                                tblBookingDetails.Rows.Add(headerRow);

                                // Populate table with data
                                foreach (DataRow row in dataTable.Rows)
                                {
                                    TableRow dataRow = new TableRow();
                                    foreach (DataColumn column in dataTable.Columns)
                                    {
                                        TableCell dataCell = new TableCell();
                                        dataCell.Text = row[column].ToString();
                                        dataRow.Cells.Add(dataCell);
                                    }

                                    tblBookingDetails.Rows.Add(dataRow);
                                }
                            }
                            else
                            {
                                string script = "alert('PNR not found. Please check the PNR number.');";
                                ClientScript.RegisterStartupScript(this.GetType(), "Alert", script, true);
                            }
                        }
                    }
                }
            }
            else
            {
                string script = "alert('Please enter a valid PNR number.');";
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", script, true);
            }
        }

        protected void updatebutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }
    }
}