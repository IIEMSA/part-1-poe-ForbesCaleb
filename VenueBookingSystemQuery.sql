USE master
IF EXISTS (SELECT * FROM sys.databases WHERE name ='VenueBookingSystemQuery')
DROP DATABASE VenueBookingSystemQuery
CREATE DATABASE VenueBookingSystemQuery

USE VenueBookingSystemQuery

--Table Creation
CREATE TABLE Venue (
    VenueId INT PRIMARY KEY IDENTITY(1,1),
    VenueName NVARCHAR(100) NOT NULL,
    Location NVARCHAR(200),
    Capacity INT,
    ImageUrl NVARCHAR(300)
);

CREATE TABLE Event (
    EventId INT PRIMARY KEY IDENTITY(1,1),
    EventName NVARCHAR(100) NOT NULL,
    EventDate DATETIME,
    Description NVARCHAR(MAX),
    VenueId INT,
    FOREIGN KEY (VenueId) REFERENCES Venue(VenueId)
);

CREATE TABLE Booking (
    BookingId INT PRIMARY KEY IDENTITY(1,1),
    EventId INT,
    VenueId INT,
    BookingDate DATETIME,
    FOREIGN KEY (EventId) REFERENCES Event(EventId),
    FOREIGN KEY (VenueId) REFERENCES Venue(VenueId)
);
-- Insert Venues
INSERT INTO Venue (VenueName, Location, Capacity, ImageUrl)
VALUES 
('Grand Hall', '123 Main St, New York', 500, 'https://via.placeholder.com/150'),
('City Center', '45 Broadway, LA', 300, 'https://via.placeholder.com/150'),
('Skyline Venue', '88 Skyline Rd, Chicago', 800, 'https://via.placeholder.com/150');

-- Insert Events
INSERT INTO Event (EventName, EventDate, Description, VenueId)
VALUES 
('Tech Conference 2025', '2025-06-15', 'A major tech gathering.', 1),
('Wedding Expo', '2025-07-01', 'Bridal fashion and event planning.', 2),
('Music Fest', '2025-08-20', 'Live music and entertainment.', 3);

-- Insert Bookings
INSERT INTO Booking (EventId, VenueId, BookingDate)
VALUES 
(1, 1, '2025-04-10'),
(2, 2, '2025-04-12'),
(3, 3, '2025-04-15');

SELECT * FROM Venue;
SELECT * FROM Event;
SELECT * FROM Booking;