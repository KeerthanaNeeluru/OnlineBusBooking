using System;
using System.Collections.Generic;

namespace BusBookingProject.Models
{
    public partial class BusMaster
    {
        public int BusId { get; set; }

        public string BusNo { get; set; }

        public string BustType { get; set; }

        public int? TotalSeat { get; set; }

        public int? SeatColumn { get; set; }

        public int? SeatRow { get; set; }

        public int? BookedSeat { get; set; }

        public int? AvailableSeats { get; set; }

        public string BusName { get; set; }
    }
}