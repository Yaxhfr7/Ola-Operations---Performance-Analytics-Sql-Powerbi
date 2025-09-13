use ola;
-- 1 Retrieve all successful booking:
Create view successful_booking as
Select * from bookings
where Booking_status = 'Success';
-- Retrieve all successful bookings:
select * from successful_booking;


-- 2 Find the average ride distance for each vehichle type:
Create View avg_ride_distance_for_each_vehichle as
Select Vehicle_Type, avg(ride_distance) as Avg_distance
from bookings
group by vehicle_type;

#2 Find the average ride distance for each vehichle type:
select * from avg_ride_distance_for_each_vehichle;

-- 3 Get the total no of Canceled rides by customers:
create view Canceled_rides_by_customer as
select count(*) from bookings
where Booking_status ='Canceled by customer'
;

#3 Get the total no of Canceled rides by customers:
select * from Canceled_rides_by_customer;


-- 4 List the top 5 customer who booked the highest number of rides;
Create view Highest_Rides as
select count(Booking_id) as total_rides, customer_id
from bookings
group by customer_id
order by total_rides DESC limit 5;

#4 List the top 5 customer who booked the highest number of rides;
select * from Highest_Rides;

-- 5 Get the number of rides canceled by drivers due to personal and car_ related issue:
Create view Rides_canceled_by_Driver_issues as
Select * from bookings
where canceled_rides_by_Driver = 'Personal & Car related issue';
 
#5 Get the number of rides canceled by drivers due to personal and car_ related issue:
select * from Rides_canceled_by_Driver_issues;

-- 6 Get the number of rides canceled by drivers due to personal and car_ related issue:
Create view Rides_canceled_by_Customer_issues as
Select * from bookings
where canceled_rides_by_Driver Like  '%customer%';

#6 Get the number of rides canceled by drivers due to personal and car_ related issue:
select * from Rides_canceled_by_Customer_issues;

-- 7 Find the maximum and minimum driver ratings for prime sedan bookings:
Create View Max_Min_Driver_rating_for_Prime_Sedan as
Select Max(driver_ratings), Min(driver_ratings)
from bookings
where vehicle_type = 'Prime Sedan';

#7 Find the maximum and minimum driver ratings for prime sedan bookings:
select * from Max_Min_Driver_rating_for_Prime_Sedan;

-- 8 Retrieve all rides where payment was made using upi:
Create view Payment_via_Upi as
select * from bookings
where payment_method = 'UPI';

#8 Retrieve all rides where payment was made using upi:
select * from Payment_via_Upi;

-- 9 Find the average customer Rating per vehicle type:
create view average_customer_Rating_per_vehicle_type as
Select vehicle_type, avg(customer_rating) as Customer_rating
from bookings
group by vehicle_type;

#9 Find the average customer Rating per vehicle type:
Select  * from average_customer_Rating_per_vehicle_type;

-- 10  Calculate the total booking value of rides completed successfully:
create view Total_booking_value_of_successfull_rides as
Select sum(booking_value) as total_successful_value
from bookings
where booking_status = 'Success';


# 10 Calculate the total booking value of rides completed successfully:
Select  * from Total_booking_value_of_successfull_rides;


-- 11 list all incomplete rides along with the reason
create view Incomplete_Ride as 
select Booking_id, incomplete_rides_reason
from bookings
where incomplete_rides = 'Yes';

#11 list all incomplete rides along with the reason
Select  * from Incomplete_Ride;


Select  * from bookings;