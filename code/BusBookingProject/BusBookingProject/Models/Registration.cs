using System;
using System.Collections.Generic;

namespace BusBookingProject.Models
{
    public partial class Registration
    {
        public int RegId { get; set; }

        public string Fname { get; set; }

        public string Lname { get; set; }

        public string EmailId { get; set; }

        public string Address { get; set; }

        public string City { get; set; }

        public string Picode { get; set; }

        public string Contact { get; set; }

        public string Password { get; set; }

        public DateTime? CreatedDate { get; set; }
    }
}