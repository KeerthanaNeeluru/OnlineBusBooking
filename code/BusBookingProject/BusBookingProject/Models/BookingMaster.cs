using System;
using System.Collections.Generic;

namespace BusBookingProject.Models
{
    public partial class BookingMaster
    {
        public int BookingId { get; set; }

        public int? RegId { get; set; }

        public int? BusId { get; set; }

        public string Fname { get; set; }

        public string Lname { get; set; }

        public string Email { get; set; }

        public string Contact { get; set; }

        public string City { get; set; }

        public string SeatNo { get; set; }

        public string TravelDate { get; set; }

        public string Origin { get; set; }

        public string Destination { get; set; }

        public int? BoardingId { get; set; }

        public decimal? Fare { get; set; }

        public string Pnrno { get; set; }

        public int? ScheduleId { get; set; }
    }
}