CREATE DATABASE OnlineBusBooking;
USE OnlineBusBooking;

CREATE TABLE Registration (
	regId int IDENTITY(1,1) NOT NULL,
	Fname varchar(50) NULL,
	Lname varchar(50) NULL,
	EmailId varchar(50) NULL,
	Address varchar(200) NULL,
	City varchar(50) NULL,
	Picode varchar(15) NULL,
	Contact varchar(50) NULL,
	Password varchar(50) NULL,
	CreatedDate datetime NULL,
	CONSTRAINT PK_Registration PRIMARY KEY CLUSTERED (regId ASC)
)

CREATE TABLE BusMaster (
	BusId int IDENTITY(1,1) NOT NULL,
	BusNo varchar(50) NULL,
	BustType varchar(50) NULL,
	TotalSeat int NULL,
	SeatColumn int NULL,
	SeatRow int NULL,
	BookedSeat int NULL,
	AvailableSeats int NULL,
	BusName varchar(50) NULL,
	CONSTRAINT PK_BusMaster PRIMARY KEY CLUSTERED (BusId ASC)
) 

CREATE TABLE RouteDetails (
	RouteID int IDENTITY(1,1) NOT NULL,
	Origin varchar(50) NULL,
	Destination varchar(50) NULL,
	CreatedDate datetime NULL,
	BusID int NULL,
	CONSTRAINT PK_RouteDetails PRIMARY KEY CLUSTERED (RouteID ASC)
) 

CREATE TABLE PickUpStand (
	StandId int IDENTITY(1,1) NOT NULL,
	RouteId int NULL,
	PlaceName varchar(50) NULL,
	PlaceTime varchar(50) NULL,
	BusID int NULL,
	CONSTRAINT PK_PickUpStand PRIMARY KEY CLUSTERED (StandId ASC)
) 

CREATE TABLE ScheduleMaster (
	ScheduleId int IDENTITY(1,1) NOT NULL,
	BusId int NULL,
	Date varchar(50) NULL,
	Fare decimal(18, 2) NULL,
	EstimatedTime varchar(50) NULL,
	ArivalTime varchar(50) NULL,
	DepartureTime varchar(50) NULL,
	RouteID int NULL,
	BookedSeats int NULL,
	AvailableSeats int NULL
) 

CREATE TABLE PNRDetails (
	PNRDetailsID bigint IDENTITY(1,1) NOT NULL,
	PNRNo varchar(50) NULL,
	TotalAmount decimal(18, 2) NULL,
	TotalTickets int NULL,
	CreatedBy int NULL,
	CONSTRAINT PK_PNRDetails PRIMARY KEY CLUSTERED (PNRDetailsID ASC)
) 

CREATE TABLE CityDetails (
	CityID bigint IDENTITY(1,1) NOT NULL,
	CityName varchar(50) NULL,
	CONSTRAINT PK_CityDetails PRIMARY KEY CLUSTERED (CityID ASC)
) 

CREATE TABLE CardDetails (
	CardID bigint IDENTITY(1,1) NOT NULL,
	UserID int NULL,
	CardType varchar(20) NULL,
	BankName varchar(50) NULL,
	CVVNo varchar(10) NULL,
	CardNo nvarchar(100) NULL,
	TotalAmount decimal(18, 2) NULL,
	CreatedBy int NULL,
	CONSTRAINT PK_CardDetails PRIMARY KEY CLUSTERED (CardID ASC)
)

CREATE TABLE BookingMaster (
	BookingId int IDENTITY(1,1) NOT NULL,
	RegId int NULL,
	BusId int NULL,
	Fname varchar(50) NULL,
	Lname varchar(50) NULL,
	Email varchar(50) NULL,
	Contact varchar(50) NULL,
	City varchar(50) NULL,
	SeatNo nvarchar(50) NULL,
	TravelDate varchar(50) NULL,
	Origin varchar(50) NULL,
	Destination varchar(50) NULL,
	BoardingID int NULL,
	Fare decimal(18, 2) NULL,
	PNRNo varchar(50) NULL,
	ScheduleID int NULL,
	CONSTRAINT PK_BookingMaster PRIMARY KEY CLUSTERED (BookingId ASC)
) 

--1PROCEDURE addBordingDetails
CREATE PROCEDURE addBordingDetails
	@RouteID int,
	@PlaceName varchar(50),
	@PlaceTime varchar(50),
	@BusID int
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO PickUpStand (RouteId, PlaceName, PlaceTime, BusID) VALUES (@RouteID, @PlaceName, @PlaceTime, @BusID);
END;
--2PROCEDURE ispUserRegistration
CREATE PROCEDURE ispUserRegistration
	@FName varchar(50) = '',
	@LName varchar(50),
	@EmailId varchar(50),
	@Address varchar(50),
	@City varchar(50),
	@PinCode varchar(15),
	@ContactNo varchar(50),
	@Password varchar(50),
	@Ret_Val bigint OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	IF EXISTS (SELECT Contact FROM Registration WHERE Contact = @ContactNo)
	BEGIN
		SET @Ret_Val = -1;
	END
	ELSE
	BEGIN
		INSERT INTO Registration (Fname, Lname, EmailId, Address, City, Picode, Contact, Password, CreatedDate)
		VALUES (@FName, @LName, @EmailId, @Address, @City, @PinCode, @ContactNo, @Password, GETDATE());
		SET @Ret_Val = @@IDENTITY;
	END
END;


--3PROCEDURE ispUserLogin
create procedure ispUserLogin(
@MobileNo varchar(50),
@Password varchar(50)
)
as
set nocount on
begin
select * from dbo.Registration where Contact=@MobileNo and Password=@Password
END;

--4Procedure ispUpdateBusData]
create procedure ispUpdateBusData( --ispGetBusDataByBusID 1
@BusID int,
@BusNo varchar(50),
@BusType varchar(50),
@seatColumn int,
@SeatRow int,
@BusName varchar(50),
@Origin varchar(50),
@Destination varchar(50)
)	
as
set nocount on
begin
update dbo.BusMaster set 
BusNo=@BusNo,BustType=@BusType,SeatColumn=@seatColumn,SeatRow=@SeatRow,BusName=@BusName
where BusId=@BusID
update dbo.RouteDetails set 
Origin=@Origin,Destination=@Destination where BusID=@BusID
end



--5Procedure ispGetRouteDetails
GO
create procedure ispGetRouteDetails
as
set nocount on
begin
select * from dbo.RouteDetails
end



--6Procedure ispGetPNRDetails
GO
create procedure ispGetPNRDetails(
@UserID int
)
as
set nocount on
begin
select * from dbo.PNRDetails where CreatedBy=@UserID
end


--7Procedure ispGetCity
GO
create procedure [dbo].[ispGetCity]
as
set nocount on
begin
select * from dbo.CityDetails
end





--8Procedure ispGetBusDetailsForUpdation
CREATE procedure ispGetBusDetailsForUpdation
as
set nocount on
begin
select BM.BusId,BM.BusNo,BM.BusName,BM.BustType,BM.SeatColumn,BM.SeatRow,RD.Origin,RD.Destination,RD.RouteID
from dbo.BusMaster BM 
left join dbo.RouteDetails RD
on BM.BusId=RD.BusID
end

--9Procedure ispGetBusDataByBusID
CREATE procedure ispGetBusDataByBusID( --ispGetBusDataByBusID 1
@BusID int
)	
as
set nocount on
begin
select BM.BusId,BM.BusNo,BM.BustType,BM.SeatColumn,BM.BusName,BM.SeatRow,RD.Origin,RD.Destination,RD.RouteID
from dbo.BusMaster BM 
left join dbo.RouteDetails RD
on BM.BusId=RD.BusID
where BM.BusId=@BusID
end



--10Procedure ispGetBookingReportByAdmin
CREATE procedure [dbo].[ispGetBookingReportByAdmin]
as
set nocount on
begin
select BM.Fname+''+BM.Lname as PaxName,BM.Email,BM.Contact,BM.PNRNo,BM.SeatNo,Convert(varchar(11),CONVERT(SMALLDATETIME, BM.TravelDate, 103),13) as TravelDate,BM.Origin,BM.Destination,
Fare,UM.Fname+''+UM.Lname as BookedBy,BB.BusName From dbo.BookingMaster BM
left join dbo.BusMaster BB on  BM.BusId=BB.BusId 
left join dbo.Registration UM on  UM.regId=BM.RegId
end


--11Procedure ispGetBookedSeatNo
CREATE procedure ispGetBookedSeatNo( -- ispGetBookedSeatNo 1
@BusID int,
@TravelDate varchar(50)
)
as
set nocount on
begin
declare @scheduleId int;
select @scheduleId=ScheduleId from dbo.ScheduleMaster where BusId=@BusID and Date=@TravelDate
select isnull(SeatNo,0) as SeatNo from dbo.BookingMaster
where ScheduleId=@scheduleId
end


--12Procedure ispGetBoardingPoints
create procedure ispGetBoardingPoints(
@BusID int
)
as
set nocount on
begin
select * from dbo.PickUpStand where BusID=@BusID
end

--13Procedure ispGetAvailableBusDetails
CREATE procedure ispGetAvailableBusDetails( --ispGetAvailableBusDetails 'Mumbai','Pune','11/03/2023'
@Origin varchar(50),
@Destination varchar(50),
@TravelDate varchar(50)
)
as
set nocount on
begin
declare @scheduleid int;
select @scheduleid=ScheduleId from dbo.ScheduleMaster where Date=@TravelDate
select BM.BusId,BM.BusName,BM.BusNo,BM.SeatColumn,BM.SeatRow,BM.BustType,BM.TotalSeat,SM.AvailableSeats,SM.Fare,SM.EstimatedTime,SM.DepartureTime,SM.ArivalTime
from dbo.BusMaster BM
left join dbo.ScheduleMaster SM
on SM.BusId=BM.BusId
left join dbo.RouteDetails RD
on RD.RouteID=SM.RouteID
where SM.Date=@TravelDate and RD.Origin=@Origin and RD.Destination=@Destination and SM.ScheduleId=@scheduleid
end



--14Procedure [ispAddPNRDetails]
CREATE procedure ispAddPNRDetails(
@PNRNo varchar(50),
@TotalAmount decimal(18,2),
@TotalTicket int,
@CreatedBy int
)
as
set nocount on
begin
insert into dbo.PNRDetails 
(PNRNo,TotalAmount,TotalTickets,CreatedBy)
values(@PNRNo,@TotalAmount,@TotalTicket,@CreatedBy);
end 




--15Procedure ispAddPassengerDetails
CREATE procedure ispAddPassengerDetails(
@RegId int,
@BusId int,
@Fname varchar(50),
@Lname varchar(50),
@Email varchar(50),
@Contact varchar(50),
@City varchar(50),
@SeatNo nvarchar(50),
@TravelDate varchar(50),
@Origin varchar(50),
@Destination varchar(50),
@BoardingId int,
@Fare decimal(18,2),
@TotalSeats int,
@PNRNo varchar(50)
)
as
set nocount on
begin
declare @BookedSeat int;
declare @AvailableSeats int;
declare @scheduleID int;
select @scheduleID=ScheduleId from dbo.ScheduleMaster where Date=@TravelDate
insert into dbo.BookingMaster
(RegId,BusId,Fname,Lname,Email,Contact,City,SeatNo,TravelDate,Origin,Destination,BoardingID,Fare,PNRNo,ScheduleID)
values(@RegId,@BusId,@Fname,@Lname,@Email,@Contact,@City,@SeatNo,@TravelDate,@Origin,@Destination,@BoardingId,@Fare,@PNRNo,@scheduleID)
select @BookedSeat=BookedSeats from dbo.ScheduleMaster where ScheduleId=@scheduleID
select @AvailableSeats=AvailableSeats from dbo.ScheduleMaster where ScheduleId=@scheduleID
update dbo.ScheduleMaster set BookedSeats=(@BookedSeat+1) where ScheduleId=@scheduleID
update dbo.ScheduleMaster set AvailableSeats=(@AvailableSeats-1) where ScheduleId=@scheduleID
end
GO




--16Procedure ispAddCardDetails

CREATE procedure ispAddCardDetails(
@UserID int,
@CardType varchar(20),
@BankName varchar(50),
@CVVNo varchar(10),
@CardNo nvarchar(100),
@TotalAmount decimal(18,2)
)
as
set nocount on
begin
insert into dbo.CardDetails
(UserID,CardType,BankName,CVVNo,CardNo,TotalAmount)
values(@UserID,@CardType,@BankName,@CVVNo,@CardNo,@TotalAmount)
end



--17Procedure ispAddBusSchedule
CREATE procedure ispAddBusSchedule( --ispGetBusDataByBusID 1
@Date varchar(50) ,
@BusID int,
@Fare decimal(18,2),
@EstimatdTime varchar(50),
@ArrivalTime varchar(50),
@DepartureTime varchar(50),
@RouteID int
)	
as
set nocount on
begin
declare @AvailableSeats int;
select @AvailableSeats=AvailableSeats from dbo.BusMaster where BusId=@BusID 
insert into dbo.ScheduleMaster
(Date,Fare,EstimatedTime,ArivalTime,DepartureTime,RouteID,BusId,AvailableSeats,BookedSeats)
values(@Date,@Fare,@EstimatdTime,@ArrivalTime,@DepartureTime,@RouteID,@BusID,@AvailableSeats,0)
end
end
   

   --18procedure ispAddBusDetails
CREATE procedure ispAddBusDetails(
@BusNo varchar(50),
@BustType varchar(50),
@SeatColumn int,
@SeatRow int,
@Origin varchar(50),
@Destination varchar(50),
@BusName varchar(50)	
)
as
set nocount on
begin
declare @Ret_Val int;
insert into dbo.BusMaster(BusNo,BustType,TotalSeat,SeatColumn,SeatRow,BookedSeat,AvailableSeats,BusName)
values(@BusNo,@BustType,(@SeatRow*@SeatColumn),@SeatColumn,@SeatRow,0,(@SeatRow*@SeatColumn),@BusName)
set @Ret_Val=@@IDENTITY;
if(@@ROWCOUNT>0)
  begin
   insert into dbo.RouteDetails(Origin,Destination,CreatedDate,BusID) values(@Origin,@Destination,GETDATE(),@Ret_Val)
  end
if not exists (select CityName from dbo.CityDetails where CityName=@Origin)
 begin
 insert into dbo.CityDetails (CityName) values(@Origin)
 end 
 if not exists (select CityName from dbo.CityDetails where CityName=@Destination)
 begin
 insert into dbo.CityDetails (CityName) values(@Destination)
 end 
end

--19procedure GetPassengerDetails
CREATE procedure GetPassengerDetails( --GetPassengerDetails '48TF1G'
@PNRNo varchar(50)
)
as
set nocount on
begin
select  BM.Fname,BM.Lname,BM.Contact,BM.SeatNo,BM.TravelDate,BM.Origin,BM.Destination,PS.PlaceName
from dbo.BookingMaster BM
 inner join dbo.PickUpStand PS on
 PS.StandId=BM.BoardingID and  BM.PNRNo=@PNRNo
 declare @BusID int
 select @BusID=(BusId) from dbo.BookingMaster where PNRNo=@PNRNo
 declare @BusName varchar(50)
 declare @DeptTime varchar(50)
 declare @PlaceName varchar(50)
 declare @TotalAmount decimal(18,2)
 declare @TotalTickets int;
 select @PlaceName=PlaceName from dbo.PickUpStand where BusID=@BusID
 select @BusName=BusName from dbo.BusMaster where BusId=@BusID
 select @PNRNO=PNRNo from dbo.BookingMaster where PNRNo=@PNRNo
 select @DeptTime=PlaceTime from dbo.PickUpStand where PlaceName=@PlaceName
 select @TotalAmount=TotalAmount,@TotalTickets=TotalTickets from dbo.PNRDetails where PNRNo=@PNRNo
 select @BusName as BusName,@PNRNO as PNRNo,@DeptTime as DeptTime,@TotalAmount as Amount,@TotalTickets as TotalTickets
end



CREATE TABLE [dbo].[Feedback](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](10) NULL,
	[rating] [int] NULL,
	[comments] [nvarchar](max) NULL,
	[busImage] [varchar](max) NULL,
PRIMARY KEY CLUSTERED  
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
Select * From Feedback