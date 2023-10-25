using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear the user's session or authentication tokens.
            Session.Abandon(); // Clears the user's session.
                               // Optionally, you might also clear any authentication cookies if you're using them.

            // Redirect the user to the Default.aspx page after logout.
            Response.Redirect("Default.aspx");
        }
    }
}