using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject.Admin
{
    public partial class UpdateBusSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UpdateDate_Click(object sender, EventArgs e)
        {
            string scheduleId = ScheduleIdTextBox.Text;
            string newDateInput = NewDateTextBox.Text;

            if (!string.IsNullOrEmpty(scheduleId) && !string.IsNullOrEmpty(newDateInput))
            {
                using (SqlConnection connection = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString2"].ConnectionString))
                {
                    connection.Open();
                    string updateQuery = "UPDATE ScheduleMaster SET Date = @NewDate WHERE ScheduleId = @ScheduleId";

                    using (SqlCommand cmd = new SqlCommand(updateQuery, connection))
                    {
                        cmd.Parameters.AddWithValue("@NewDate", newDateInput);
                        cmd.Parameters.AddWithValue("@ScheduleId", scheduleId);

                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            // Update was successful.
                            MessageLabel.Text = "Date updated successfully.";
                        }
                        else
                        {
                            // No rows were updated.
                            MessageLabel.Text = "No schedule found with the provided Schedule ID.";
                        }
                    }
                }
            }
            else
            {
                // Invalid input.
                MessageLabel.Text = "Please enter a valid Schedule ID and date.";
            }
        }
   
    }
}
