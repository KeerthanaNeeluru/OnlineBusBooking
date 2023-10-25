using System;
using System.Collections.Generic;

namespace BusBookingProject.Models
{
    public partial class ScheduleMaster
    {
        public int ScheduleId { get; set; }

        public int? BusId { get; set; }

        public string Date { get; set; }

        public decimal? Fare { get; set; }

        public string EstimatedTime { get; set; }

        public string ArivalTime { get; set; }

        public string DepartureTime { get; set; }

        public int? RouteId { get; set; }

        public int? BookedSeats { get; set; }

        public int? AvailableSeats { get; set; }
    }
}