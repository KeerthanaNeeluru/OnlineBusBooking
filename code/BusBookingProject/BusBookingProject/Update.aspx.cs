using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject
{
    public partial class UpdateRescedule : System.Web.UI.Page
    {
        private readonly string connString = ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if it's a postback to prevent resetting the page on postback
            if (!IsPostBack)
            {
                DisableTextFieldsForEditing();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string contactNumber = txtContactSearch.Text;

            // Implement the logic to search for the contact using the provided contactNumber
            bool contactIsFound = SearchForContact(contactNumber);

            if (contactIsFound)
            {
                EnableTextFieldsForEditing();
                lblResult.Text = "Contact found. You can now edit the details.";
            }
            else
            {
                DisableTextFieldsForEditing();
                lblResult.Text = "Contact not found.";
            }
        }

        private bool SearchForContact(string contactNumber)
        {
            // Implement database connection and query here
            using (SqlConnection connection = new SqlConnection(connString))
            {
                connection.Open();
                string query = "SELECT * FROM [dbo].[BookingMaster] WHERE [Contact] = @Contact";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Contact", contactNumber);
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            // Populate textboxes with retrieved data
                            txtFname.Text = reader["Fname"].ToString();
                            txtLname.Text = reader["Lname"].ToString();
                            txtEmail.Text = reader["Email"].ToString();
                            txtCity.Text = reader["City"].ToString();
                            txtSeatNo.Text = reader["SeatNo"].ToString();
                            txtTravelDate.Text = reader["TravelDate"].ToString();
                            txtOrigin.Text = reader["Origin"].ToString();
                            txtDestination.Text = reader["Destination"].ToString();
                            txtBoardingID.Text = reader["BoardingID"].ToString();
                            txtFare.Text = reader["Fare"].ToString();
                            txtPNRNo.Text = reader["PNRNo"].ToString();
                            txtScheduleID.Text = reader["ScheduleID"].ToString();

                            return true; // Contact found
                        }
                    }
                }
            }

            return false; // Contact not found
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string tDate = txtTravelDate.Text;

            // Implement the logic to search for the contact using the provided contactNumber
            bool Busfound = Busisfound(tDate);
            if (Busfound)
            {
                lblResult.Text = "Bus Found";


                // Implement the logic to update the contact's details in the database
                string contactNumber = txtContactSearch.Text;
                string fname = txtFname.Text;
                string lname = txtLname.Text;
                string email = txtEmail.Text;
                string city = txtCity.Text;
                string seatNo = txtSeatNo.Text;
                string travelDate = txtTravelDate.Text;
                string origin = txtOrigin.Text;
                string destination = txtDestination.Text;
                string boardingID = txtBoardingID.Text;
                string fare = txtFare.Text;
                string pnrNo = txtPNRNo.Text;
                string scheduleID = txtScheduleID.Text;

                if (UpdateContact(contactNumber, fname, lname, email, city, seatNo, travelDate, origin, destination, boardingID, fare, pnrNo, scheduleID))
                {
                    lblResult.Text = "Update successful!";
                }
                else
                {
                    lblResult.Text = "Update failed.";
                }
            }
            else
            {
                lblResult.Text = "Bus is Not Available for this schedule time";
            }
        }

        private bool UpdateContact(string contactNumber, string fname, string lname, string email, string city, string seatNo, string travelDate, string origin, string destination, string boardingID, string fare, string pnrNo, string scheduleID)
        {
            // Implement the logic to update the contact's details in the database
            using (SqlConnection connection = new SqlConnection(connString))
            {
                connection.Open();
                string query = "UPDATE [dbo].[BookingMaster] SET " +
                    "[Fname] = @Fname, [Lname] = @Lname, [Email] = @Email, [City] = @City, [SeatNo] = @SeatNo, " +
                    "[TravelDate] = @TravelDate, [Origin] = @Origin, [Destination] = @Destination, [BoardingID] = @BoardingID, " +
                    "[Fare] = @Fare, [PNRNo] = @PNRNo, [ScheduleID] = @ScheduleID " +
                    "WHERE [Contact] = @Contact";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Fname", fname);
                    command.Parameters.AddWithValue("@Lname", lname);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@City", city);
                    command.Parameters.AddWithValue("@SeatNo", seatNo);
                    command.Parameters.AddWithValue("@TravelDate", travelDate);
                    command.Parameters.AddWithValue("@Origin", origin);
                    command.Parameters.AddWithValue("@Destination", destination);
                    command.Parameters.AddWithValue("@BoardingID", boardingID);
                    command.Parameters.AddWithValue("@Fare", fare);
                    command.Parameters.AddWithValue("@PNRNo", pnrNo);
                    command.Parameters.AddWithValue("@ScheduleID", scheduleID);
                    command.Parameters.AddWithValue("@Contact", contactNumber);

                    int rowsAffected = command.ExecuteNonQuery();
                    return rowsAffected > 0;
                }
            }
        }


        private void EnableTextFieldsForEditing()
        {
            txtFname.Enabled = false;
            txtLname.Enabled = false;
            txtEmail.Enabled = false;
            txtCity.Enabled = false;
            txtSeatNo.Enabled = false;
            txtTravelDate.Enabled = true;
            txtOrigin.Enabled = false;
            txtDestination.Enabled = false;
            txtBoardingID.Enabled = false;
            txtFare.Enabled = false;
            txtPNRNo.Enabled = false;
            txtScheduleID.Enabled = false;
        }

        private void DisableTextFieldsForEditing()
        {
            txtFname.Enabled = false;
            txtLname.Enabled = false;
            txtEmail.Enabled = false;
            txtCity.Enabled = false;
            txtSeatNo.Enabled = false;
            txtTravelDate.Enabled = false;
            txtOrigin.Enabled = false;
            txtDestination.Enabled = false;
            txtBoardingID.Enabled = false;
            txtFare.Enabled = false;
            txtPNRNo.Enabled = false;
            txtScheduleID.Enabled = false;
        }

        private bool Busisfound(string tDate)
        {  // Implement database connection and query here
            using (SqlConnection connection = new SqlConnection(connString))
            {
                connection.Open();
                string query = "SELECT * FROM [dbo].[ScheduleMaster] WHERE [Date] = @tDate";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@tDate", tDate);
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            txtTravelDate.Text = reader["Date"].ToString();
                            return true; // Contact found
                        }
                    }
                }
            }

            return false; // Contact not found


        }
    }
}