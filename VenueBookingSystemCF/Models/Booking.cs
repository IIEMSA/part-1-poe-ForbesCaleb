using System.ComponentModel.DataAnnotations;
using VenueBookingSystemCF.Models;

namespace VenueBookingSystemCF.Models
{
    public class Booking
    {
        internal int? Id;

        [Key]
        public int BookingId { get; set; }

            public int EventId { get; set; }
            public Event Event { get; set; }

            public int VenueId { get; set; }
            public Venue Venue { get; set; }

            public DateTime BookingDate { get; set; }
      
    }
    }

