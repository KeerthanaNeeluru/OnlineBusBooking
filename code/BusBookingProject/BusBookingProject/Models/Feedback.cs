using System;
using System.Collections.Generic;

namespace BusBookingProject.Models
{
    public partial class Feedback
    {
        public int FeedbackId { get; set; }

        public string CustomerName { get; set; }

        public int? Rating { get; set; }

        public string Comments { get; set; }

        public string BusImage { get; set; }
    }
}