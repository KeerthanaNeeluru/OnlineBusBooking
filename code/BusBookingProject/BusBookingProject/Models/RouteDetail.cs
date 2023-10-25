using System;
using System.Collections.Generic;

namespace BusBookingProject.Models
{
    public partial class RouteDetail
    {
        public int RouteId { get; set; }

        public string Origin { get; set; }

        public string Destination { get; set; }

        public DateTime? CreatedDate { get; set; }

        public int? BusId { get; set; }
    }
}