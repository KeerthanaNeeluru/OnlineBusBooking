using BusBookingProject.Models;

namespace Testing
{
    [TestFixture]
    public class Tests
    {
        [Test]
        public void TestRegistrationProperties()
        {
            Registration registration = new Registration();

            registration.RegId = 1;
            registration.Fname = "John";
            registration.Lname = "Doe";
            registration.EmailId = "johndoe@example.com";
            registration.Address = "123 Main St";
            registration.City = "New York";
            registration.Picode = "10001";
            registration.Contact = "123-456-7890";
            registration.Password = "securepassword";
            registration.CreatedDate = DateTime.Now;

            // Check if the properties are set correctly
            Assert.That(registration.RegId, Is.EqualTo(1));
            Assert.That(registration.Fname, Is.EqualTo("John"));
            Assert.That(registration.Lname, Is.EqualTo("Doe"));
            Assert.That(registration.EmailId, Is.EqualTo("johndoe@example.com"));
            Assert.That(registration.Address, Is.EqualTo("123 Main St"));
            Assert.That(registration.City, Is.EqualTo("New York"));
            Assert.That(registration.Picode, Is.EqualTo("10001"));
            Assert.That(registration.Contact, Is.EqualTo("123-456-7890"));
            Assert.That(registration.Password, Is.EqualTo("securepassword"));
            Assert.IsNotNull(registration.CreatedDate);
        }
        [Test]
        public void TestBookingMasterProperties()
        {
            BookingMaster booking = new BookingMaster();

            booking.BookingId = 1;
            booking.RegId = 2;
            booking.BusId = 3;
            booking.Fname = "John";
            booking.Lname = "Doe";
            booking.Email = "johndoe@example.com";
            booking.Contact = "123-456-7890";
            booking.City = "New York";
            booking.SeatNo = "A1";
            booking.TravelDate = "2023-10-19"; // Assuming it's a valid date format
            booking.Origin = "Origin City";
            booking.Destination = "Destination City";
            booking.BoardingId = 4;
            booking.Fare = 50.00M;
            booking.Pnrno = "ABC123";
            booking.ScheduleId = 5;

            // Check if the properties are set correctly
            Assert.That(booking.BookingId, Is.EqualTo(1));
            Assert.That(booking.RegId, Is.EqualTo(2));
            Assert.That(booking.BusId, Is.EqualTo(3));
            Assert.That(booking.Fname, Is.EqualTo("John"));
            Assert.That(booking.Lname, Is.EqualTo("Doe"));
            Assert.That(booking.Email, Is.EqualTo("johndoe@example.com"));
            Assert.That(booking.Contact, Is.EqualTo("123-456-7890"));
            Assert.That(booking.City, Is.EqualTo("New York"));
            Assert.That(booking.SeatNo, Is.EqualTo("A1"));
            Assert.That(booking.TravelDate, Is.EqualTo("2023-10-19")); // You can parse the string as a DateTime for more robust testing
            Assert.That(booking.Origin, Is.EqualTo("Origin City"));
            Assert.That(booking.Destination, Is.EqualTo("Destination City"));
            Assert.That(booking.BoardingId, Is.EqualTo(4));
            Assert.That(booking.Fare, Is.EqualTo(50.00M));
            Assert.That(booking.Pnrno, Is.EqualTo("ABC123"));
            Assert.That(booking.ScheduleId, Is.EqualTo(5));
        }


        [Test]
        public void TestBusMasterProperties()
        {
            BusMaster bus = new BusMaster();

            bus.BusId = 1;
            bus.BusNo = "BUS123";
            bus.BustType = "Sleeper";
            bus.TotalSeat = 50;
            bus.SeatColumn = 5;
            bus.SeatRow = 10;
            bus.BookedSeat = 10;
            bus.AvailableSeats = 40;
            bus.BusName = "AC Express";

            // Check if the properties are set correctly
            Assert.That(bus.BusId, Is.EqualTo(1));
            Assert.That(bus.BusNo, Is.EqualTo("BUS123"));
            Assert.That(bus.BustType, Is.EqualTo("Sleeper"));
            Assert.That(bus.TotalSeat, Is.EqualTo(50));
            Assert.That(bus.SeatColumn, Is.EqualTo(5));
            Assert.That(bus.SeatRow, Is.EqualTo(10));
            Assert.That(bus.BookedSeat, Is.EqualTo(10));
            Assert.That(bus.AvailableSeats, Is.EqualTo(40));
            Assert.That(bus.BusName, Is.EqualTo("AC Express"));
        }
        [Test]
        public void TestCardDetailProperties()
        {
            CardDetail card = new CardDetail();

            card.CardId = 1;
            card.UserId = 2;
            card.CardType = "Visa";
            card.BankName = "Bank of America";
            card.Cvvno = "123";
            card.CardNo = "1234 5678 9012 3456";
            card.TotalAmount = 100.00M;
            card.CreatedBy = 3;

            // Check if the properties are set correctly
            Assert.That(card.CardId, Is.EqualTo(1));
            Assert.That(card.UserId, Is.EqualTo(2));
            Assert.That(card.CardType, Is.EqualTo("Visa"));
            Assert.That(card.BankName, Is.EqualTo("Bank of America"));
            Assert.That(card.Cvvno, Is.EqualTo("123"));
            Assert.That(card.CardNo, Is.EqualTo("1234 5678 9012 3456"));
            Assert.That(card.TotalAmount, Is.EqualTo(100.00M));
            Assert.That(card.CreatedBy, Is.EqualTo(3));
        }
        [Test]
        public void TestCityDetailProperties()
        {
            CityDetail city = new CityDetail();

            city.CityId = 1;
            city.CityName = "New York";

            // Check if the properties are set correctly
            Assert.That(city.CityId, Is.EqualTo(1));
            Assert.That(city.CityName, Is.EqualTo("New York"));
        }

        [Test]
        public void TestPickUpStandProperties()
        {
            PickUpStand pickUpStand = new PickUpStand();

            pickUpStand.StandId = 1;
            pickUpStand.RouteId = 2;
            pickUpStand.PlaceName = "Bus Stop A";
            pickUpStand.PlaceTime = "09:00 AM";
            pickUpStand.BusId = 3;

            // Check if the properties are set correctly
            Assert.That(pickUpStand.StandId, Is.EqualTo(1));
            Assert.That(pickUpStand.RouteId, Is.EqualTo(2));
            Assert.That(pickUpStand.PlaceName, Is.EqualTo("Bus Stop A"));
            Assert.That(pickUpStand.PlaceTime, Is.EqualTo("09:00 AM"));
            Assert.That(pickUpStand.BusId, Is.EqualTo(3));
        }

        [Test]
        public void TestPnrdetailProperties()
        {
            Pnrdetail pnrdetail = new Pnrdetail();

            pnrdetail.PnrdetailsId = 1;
            pnrdetail.Pnrno = "ABC123";
            pnrdetail.TotalAmount = 100.00M;
            pnrdetail.TotalTickets = 2;
            pnrdetail.CreatedBy = 3;

            // Check if the properties are set correctly
            Assert.That(pnrdetail.PnrdetailsId, Is.EqualTo(1));
            Assert.That(pnrdetail.Pnrno, Is.EqualTo("ABC123"));
            Assert.That(pnrdetail.TotalAmount, Is.EqualTo(100.00M));
            Assert.That(pnrdetail.TotalTickets, Is.EqualTo(2));
            Assert.That(pnrdetail.CreatedBy, Is.EqualTo(3));
        }


        [Test]
        public void TestRouteDetailProperties()
        {
            RouteDetail route = new RouteDetail();

            route.RouteId = 1;
            route.Origin = "City A";
            route.Destination = "City B";
            route.CreatedDate = DateTime.Now;
            route.BusId = 2;

            // Check if the properties are set correctly
            Assert.That(route.RouteId, Is.EqualTo(1));
            Assert.That(route.Origin, Is.EqualTo("City A"));
            Assert.That(route.Destination, Is.EqualTo("City B"));
            Assert.IsNotNull(route.CreatedDate);
            Assert.That(route.BusId, Is.EqualTo(2));
        }

        [Test]
        public void TestScheduleMasterProperties()
        {
            ScheduleMaster schedule = new ScheduleMaster();

            schedule.ScheduleId = 1;
            schedule.BusId = 2;
            schedule.Date = "2023-10-19"; // Assuming it's a valid date format
            schedule.Fare = 50.00M;
            schedule.EstimatedTime = "3 hours";
            schedule.ArivalTime = "12:00 PM";
            schedule.DepartureTime = "9:00 AM";
            schedule.RouteId = 3;
            schedule.BookedSeats = 10;
            schedule.AvailableSeats = 40;

            // Check if the properties are set correctly
            Assert.That(schedule.ScheduleId, Is.EqualTo(1));
            Assert.That(schedule.BusId, Is.EqualTo(2));
            Assert.That(schedule.Date, Is.EqualTo("2023-10-19")); // You can parse the string as a DateTime for more robust testing
            Assert.That(schedule.Fare, Is.EqualTo(50.00M));
            Assert.That(schedule.EstimatedTime, Is.EqualTo("3 hours"));
            Assert.That(schedule.ArivalTime, Is.EqualTo("12:00 PM"));
            Assert.That(schedule.DepartureTime, Is.EqualTo("9:00 AM"));
            Assert.That(schedule.RouteId, Is.EqualTo(3));
            Assert.That(schedule.BookedSeats, Is.EqualTo(10));
            Assert.That(schedule.AvailableSeats, Is.EqualTo(40));
        }

        [Test]
        public void Feedback_Initialization_DefaultValues()
        {
            // Arrange
            Feedback feedback = new Feedback();

            // Assert
            Assert.That(feedback.FeedbackId, Is.EqualTo(0));
            Assert.IsNull(feedback.CustomerName);
            Assert.IsNull(feedback.Rating);
            Assert.IsNull(feedback.Comments);
            Assert.IsNull(feedback.BusImage);
        }

        [Test]
        public void Feedback_SetProperties_ValidValues()
        {
            // Arrange
            Feedback feedback = new Feedback
            {
                FeedbackId = 1,
                CustomerName = "John Doe",
                Rating = 4,
                Comments = "Great experience!",
                BusImage = "bus.jpg"
            };

            // Assert
            Assert.That(feedback.FeedbackId, Is.EqualTo(1));
            Assert.That(feedback.CustomerName, Is.EqualTo("John Doe"));
            Assert.That(feedback.Rating, Is.EqualTo(4));
            Assert.That(feedback.Comments, Is.EqualTo("Great experience!"));
            Assert.That(feedback.BusImage, Is.EqualTo("bus.jpg"));
        }
    }
}