SELECT *
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015

--STRING FUNCTIONS Question 1
SELECT RIGHT(Base_Name,3) AS 'Last_three_letters'
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
-- One of the most common ending abbreviation for business is INC

--question 2
SELECT 
CHARINDEX(' ',Number_of_Vehicles) AS 'Space_PickUp',
CHARINDEX (' ',Number_of_Trips) AS 'Space_Number_of_Trips'
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;

-- DATE FUNCTIONS Question 1
SELECT DATENAME(month, Pick_Up_Date) AS 'Pick Up Month'
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
ORDER BY DATENAME(month, Pick_Up_Date) DESC;
-- The months are being ordered alphabetically instead of chronologically

--Question 2
SELECT 
DATENAME(day, Pick_Up_Date) AS 'Pick Up day',
DATENAME(month, Pick_Up_Date) AS 'Pick Up Month'
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
ORDER BY DATENAME(day, Pick_Up_Date) ASC; 

-- AGGREGATE FUNCTIONS Question 1
SELECT MAX(start_lng) AS 'Most Easterly PickUp'
FROM RideShareDB.dbo.lyft;

-- Question 2
SELECT MAX(start_lat) AS 'Most Northerly Pickup'
FROM RideShareDB.dbo.lyft;

--Question 3
SELECT CONCAT_WS(': ', base_number, base_name) AS 'Connection'
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;

