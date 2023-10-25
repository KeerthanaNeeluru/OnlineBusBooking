using System;
using System.Collections.Generic;

namespace BusBookingProject.Models
{
    public partial class CardDetail
    {
        public long CardId { get; set; }

        public int? UserId { get; set; }

        public string CardType { get; set; }

        public string BankName { get; set; }

        public string Cvvno { get; set; }

        public string CardNo { get; set; }

        public decimal? TotalAmount { get; set; }

        public int? CreatedBy { get; set; }
    }
}