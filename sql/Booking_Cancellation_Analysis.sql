create database if not exists ola;
use ola;
select * from booking;

-- # Retriving All SucessFull Booking-- 
create view successFull_bookings as 
select * from booking 
where Booking_Status = 'Success';

-- Find The Average Ride Distence for Each Vichle Type
create view Avg_RideDistence_ForEach_VichleType As
select Vehicle_Type , avg(Ride_Distance)
from booking
group by Vehicle_Type;

-- Get The Totale Number Of Canceld Ride By customers-- 
create view canceled_rides_by_customers As
select count(*) from booking 
where Booking_Status = 'Canceled by Customer';

-- List The Top 5 Customer who Bookes The Higest Nuber of Rides-- 
create view Top_5_Customers As
select Customer_ID , count(Booking_ID) as totale_ride
from booking
group by Customer_ID 
order by totale_ride desc limit 5;

-- Get The Nuber Of rides Canceled By Drivers Due To Personal Or car Related issues:
create view Ride_CancelBy_Driver_Per_Car_RelatedIssue As
select count(*) from booking
where Canceled_Rides_by_Driver = 'Personal & Car related issue';

-- Find the Maximum And Minimum Driving rating
create view Max_Min_DriverRating As 
select max(Driver_Ratings)as Max_rating,
min(Driver_Ratings) as Min_Rating
from booking;

-- retrives All Rides whare Payment Was made using UPI
create view UPI_Payment As
select * from booking
where Payment_Method = 'UPI';

-- Fing The Avg Customer rating Per Vechile Type
create view Customer_rating_per_Vechile As
select Vehicle_Type , avg(Customer_Rating)
from booking
group by Vehicle_Type;


-- Calculate The totale Booking value Of Ride Copeleted successfully
create view totale_successFull_rides As 
select sum(Booking_Value) as Totale_Booking
from booking
where Booking_Status = 'Success';

-- List All Incompelete Rides along with the reason
create view Incompelete_Rides_along_reason As
select Booking_ID , Incomplete_Rides_Reason 
from booking
where Incomplete_Rides = 'Yes';









