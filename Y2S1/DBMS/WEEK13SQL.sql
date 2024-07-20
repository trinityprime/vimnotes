INSERT STATEMENTS 

INSERT INTO tableName VALUES() 
------------------
3a) Insert the data into Gx_HOTEL

HOTEL_NO	HOTEL_NAME		CITY
H111		Grosvenor Hotel		London

INSERT INTO G232325U_Hotel 
VALUES ('Hill', 'Gosvener Hotel', 'London');


3b) Insert data into Gx_ROOM

ROOM_NO	HOTEL_NO	ROOM_TYPE	PRICE
1001	H111		S		172
1002	H111		D		200
1003	H111		F		300


INSERT INTO G232325U_Room
VALUES (1001, 'Hill', 'S', 172.00)


3c) Insert data into Gx_GUEST

GUEST_NO	GUEST_NAME	GUEST_ADDR
G001		John Smith	London
G002		Michael		London
G003		James 		London

INSERT INTO G232325U_Guest
VALUES ('G001', 'John Smith', 'London')


3d) Insert data into Gx_BOOKING

HOTEL_NO	GUEST_NO	DATE_FROM	DATE_TO		ROOM_NO
H111		G001		01-Jan-2003	03-Jan-2003	1001
H111		G002		05-Feb-2003	07-Feb-2003	1001
H111		G003		15-Jan-2003	17-Jan-2003	1003

INSERT INTO G232325U_Booking
VALUES ('H111', 'G001', '2003-01-01', '2003-01-03', 1001)



UPDATE/DELETE STATEMENTS

UPDATE tableName
SET column 1 = value1, column2 = value2
WHERE condition
-------------------------
4a) Guest ‘John Smith’ has called the hotel to inform the change of his address to 'Manchester' 
erform the update in the guest database.

UPDATE G232325U_Guest
SET Guest_Addr = 'Manchester'
WHERE Guest_Name = 'John Smith'


4b) The ‘Grosvenor Hotel’ has decided to increase all the room rates by 5%. 
Perform the update in the database table.

UPDATE G232325U_Room
SET price = price * 1.05
WHERE Hotel_No = (SELECT Hotel_No
		  FROM G232325U_Hotel
		  WHERE Hotel_Name = 'Governer Hotel')

OR

UPDATE Gx_ROOM R
INNER JOIN Gx_HOTEL H
ON R.Hotel_No = H.Hotel_No
SET Price = Price * 1.05
WHERE H.Hotel_Name = "Grosvener Hotel" 



ALTER TABLE STATEMENT

ALTER TABLE tableName
ADD columnName datatype;

ALTER TABLE tableName
ALTER COLUMN column_name datatype;

ALTER TABLE tableName
DROP COLUMN column_name
---------------------
5a) Add a new column which can contain NULL value 

Modify the Gx_HOTEL table to add in the following new column which allows NULL value : Phone : VARCHAR (12)

ALTER TABLE G232325U_Hotel
ADD (Phone varchar(12))


5b) Add a new column which is NOT NULL 

Suppose the business rules have changed and you need to add in a new column, HOTEL_MANAGER, of type VARCHAR (20) to the table Gx_HOTEL, how can this be done?  
What happens to the existing records?

ALTER TABLE G232325U_Hotel
ADD (Hotel_Manager varchar(20) DEFAULT 'Default Values' Not Null)



CREATE VIEW STATEMENT
---------------------
6a) Create a view (Gx_HOTEL_GUEST) to list all the guests’ bookings at all the hotels. Include the following information in the view:
•	Hotel Name
•	Guest Name 
•	Room Type
•	Booking From Date
•	Booking Duration  

CREATE VIEW
AS SELECT h.Hotel_Name, g.Guest_Name, r.room_Type, b.Date_From, b.Date_To-b.date_from
   FROM G232325U_Booking b
   INNER JOIN G232325U_Hotel b ON b.Hotel_No = h.Hotel_No
   INNER JOIN G232325U_Guest g ON g.Guest_No = g.Guest_No
   INNER JOIN G232325U_Room r ON r.Room_No and b.Hotel_No=r.Hotel_No

select * from G232325U_Hotel_Guest; --view



6b) Show the data. What is the SQL statement?


6c) What is the advantage of creating view?
- Data Independence
- Improved Security
- Reduced Complexity



UNDERSTAND INDEX
------------------
7a) Insert some more data in Gx_GUEST table:

INSERT INTO G232325U_Guest VALUES ('G112', 'Mike Tan', 'London')

7b)
SELECT * from G232325U 
WHERE Guest_Name = 'Shirley'

7d)
CREATE INDEX G232325U_guest_name_ix
ON G232325U_Guest (Guest_Name asc)








