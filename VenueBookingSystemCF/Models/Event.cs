using System.ComponentModel.DataAnnotations;
using VenueBookingSystemCF.Models;

namespace VenueBookingSystemCF.Models
{
    public class Event
    {
        public int EventId { get; set; }

        [Required]
        public string EventName { get; set; }

        public DateTime EventDate { get; set; }

        public string Description { get; set; }

        public int VenueId { get; set; }
        public Venue Venue { get; set; }

        public ICollection<Booking> Bookings { get; set; }
    }
}

