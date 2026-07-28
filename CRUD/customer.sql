CREATE TABLE Customer (
    Customer_ID NUMBER(5) PRIMARY KEY,
    First_Name VARCHAR2(50),
    Last_Name VARCHAR2(50),
    Gender VARCHAR2(10),
    Date_of_Birth DATE,
    Email VARCHAR2(100),
    Phone VARCHAR2(15),
    Customer_Password VARCHAR2(100),
    Address VARCHAR2(255),
    City VARCHAR2(50),
    State VARCHAR2(50),
    Pincode NUMBER(6),
    Registration_Date DATE
);
INSERT INTO Customer VALUES (101,'Aarav','Sharma','Male',TO_DATE('15-04-1998','DD-MM-YYYY'),'aarav@gmail.com','9876543210','Pass101','12 MG Road','Chennai','Tamil Nadu',600001,TO_DATE('10-01-2025','DD-MM-YYYY'));
1 row created.
INSERT INTO Customer VALUES (102,'Priya','Reddy','Female',TO_DATE('20-08-1999','DD-MM-YYYY'),'priya@gmail.com','9876543211','Pass102','45 Anna Nagar','Chennai','Tamil Nadu',600040,TO_DATE('12-01-2025','DD-MM-YYYY'));
1 row created.
INSERT INTO Customer VALUES (103,'Rahul','Kumar','Male',TO_DATE('10-12-1997','DD-MM-YYYY'),'rahul@gmail.com','9876543212','Pass103','22 Gandhi Road','Coimbatore','Tamil Nadu',641001,TO_DATE('15-01-2025','DD-MM-YYYY'));
1 row created.
INSERT INTO Customer VALUES (104,'Sneha','Patel','Female',TO_DATE('18-03-2000','DD-MM-YYYY'),'sneha@gmail.com','9876543213','Pass104','78 Park Street','Madurai','Tamil Nadu',625001,TO_DATE('20-01-2025','DD-MM-YYYY'));
1 row created.
INSERT INTO Customer VALUES (105,'Vikram','Singh','Male',TO_DATE('25-06-1996','DD-MM-YYYY'),'vikram@gmail.com','9876543214','Pass105','15 Lake View','Salem','Tamil Nadu',636001,TO_DATE('22-01-2025','DD-MM-YYYY'));
1 row created.
INSERT INTO Customer VALUES (106,'Ananya','Das','Female',TO_DATE('05-11-1998','DD-MM-YYYY'),'ananya@gmail.com','9876543215','Pass106','90 Beach Road','Trichy','Tamil Nadu',620001,TO_DATE('25-01-2025','DD-MM-YYYY'));
1 row created.
INSERT INTO Customer VALUES (107,'Kiran','Mehta','Male',TO_DATE('14-09-1995','DD-MM-YYYY'),'kiran@gmail.com','9876543216','Pass107','55 Green Park','Erode','Tamil Nadu',638001,TO_DATE('01-02-2025','DD-MM-YYYY'));
1 row created.
INSERT INTO Customer VALUES (108,'Divya','Nair','Female',TO_DATE('30-01-2001','DD-MM-YYYY'),'divya@gmail.com','9876543217','Pass108','11 Temple Road','Tirunelveli','Tamil Nadu',627001,TO_DATE('05-02-2025','DD-MM-YYYY'));
1 row created.
INSERT INTO Customer VALUES (109,'Rohan','Verma','Male',TO_DATE('11-05-1999','DD-MM-YYYY'),'rohan@gmail.com','9876543218','Pass109','66 River View','Vellore','Tamil Nadu',632001,TO_DATE('08-02-2025','DD-MM-YYYY'));
1 row created.
INSERT INTO Customer VALUES (110,'Meera','Joshi','Female',TO_DATE('22-07-2002','DD-MM-YYYY'),'meera@gmail.com','9876543219','Pass110','99 Main Street','Thanjavur','Tamil Nadu',613001,TO_DATE('10-02-2025','DD-MM-YYYY'));
1 row created.

SELECT * FROM Customer;
--------------------------------------------------------------------------------------------------------------------------------
Customer_ID First_Name Last_Name Gender Date_of_Birth Email Phone Customer_Password Address City State Pincode  Register_Date
--------------------------------------------------------------------------------------------------------------------------------
101	Aarav	Sharma	Male	15-04-98	aarav@gmail.com	9876543210	Pass101	12 MG Road	Chennai	Tamil Nadu	600001	10-01-25
102	Priya	Reddy	Female	20-08-99	priya@gmail.com	9876543211	Pass102	45 Anna Nagar	Chennai	Tamil Nadu	600040	12-01-25
103	Rahul	Kumar	Male	10-12-97	rahul@gmail.com	9876543212	Pass103	22 Gandhi Road	Coimbatore	Tamil Nadu	641001	15-01-25
104	Sneha	Patel	Female	18-03-00	sneha@gmail.com	9876543213	Pass104	78 Park Street	Madurai	Tamil Nadu	625001	20-01-25
105	Vikram	Singh	Male	25-06-96	vikram@gmail.com	9876543214	Pass105	15 Lake View	Salem	Tamil Nadu	636001	22-01-25
106	Ananya	Das	Female	05-11-98	ananya@gmail.com	9876543215	Pass106	90 Beach Road	Trichy	Tamil Nadu	620001	25-01-25
107	Kiran	Mehta	Male	14-09-95	kiran@gmail.com	9876543216	Pass107	55 Green Park	Erode	Tamil Nadu	638001	01-02-25
108	Divya	Nair	Female	30-01-01	divya@gmail.com	9876543217	Pass108	11 Temple Road	Tirunelveli	Tamil Nadu	627001	05-02-25
109	Rohan	Verma	Male	11-05-99	rohan@gmail.com	9876543218	Pass109	66 River View	Vellore	Tamil Nadu	632001	08-02-25
110	Meera	Joshi	Female	22-07-02	meera@gmail.com	9876543219	Pass110	99 Main Street	Thanjavur	Tamil Nadu	613001	10-02-25
---------------------------------------------------------------------------------------------------------------------------------

UPDATE Customer
SET City = 'Bangalore',
    Phone = '9988776655'
WHERE Customer_ID = 101;

1 row updated

SELECT * from Customer;

--------------------------------------------------------------------------------------------------------------------------------
Customer_ID First_Name Last_Name Gender Date_of_Birth Email Phone Customer_Password Address City State Pincode  Register_Date
--------------------------------------------------------------------------------------------------------------------------------
101	Aarav	Sharma	Male	15-04-98	aarav@gmail.com	9988776655	Pass101	12 MG Road	Bangalore	Tamil Nadu	600001	10-01-25
102	Priya	Reddy	Female	20-08-99	priya@gmail.com	9876543211	Pass102	45 Anna Nagar	Chennai	Tamil Nadu	600040	12-01-25
103	Rahul	Kumar	Male	10-12-97	rahul@gmail.com	9876543212	Pass103	22 Gandhi Road	Coimbatore	Tamil Nadu	641001	15-01-25
104	Sneha	Patel	Female	18-03-00	sneha@gmail.com	9876543213	Pass104	78 Park Street	Madurai	Tamil Nadu	625001	20-01-25
105	Vikram	Singh	Male	25-06-96	vikram@gmail.com 9876543214	Pass105	15 Lake View	Salem	Tamil Nadu	636001	22-01-25
106	Ananya	Das	Female	05-11-98	ananya@gmail.com	9876543215	Pass106	90 Beach Road	Trichy	Tamil Nadu	620001	25-01-25
107	Kiran	Mehta	Male	14-09-95	kiran@gmail.com	9876543216	Pass107	55 Green Park	Erode	Tamil Nadu	638001	01-02-25
108	Divya	Nair	Female	30-01-01	divya@gmail.com	9876543217	Pass108	11 Temple Road	Tirunelveli	Tamil Nadu	627001	05-02-25
109	Rohan	Verma	Male	11-05-99	rohan@gmail.com	9876543218	Pass109	66 River View	Vellore	Tamil Nadu	632001	08-02-25
110	Meera	Joshi	Female	22-07-02	meera@gmail.com	9876543219	Pass110	99 Main Street	Thanjavur	Tamil Nadu	613001	10-02-25
---------------------------------------------------------------------------------------------------------------------------------

DELETE FROM Customer
WHERE Customer_ID = 110;

1 row deleted

SELECT * from Customer;

--------------------------------------------------------------------------------------------------------------------------------
Customer_ID First_Name Last_Name Gender Date_of_Birth Email Phone Customer_Password Address City State Pincode  Register_Date
--------------------------------------------------------------------------------------------------------------------------------
101	Aarav	Sharma	Male	15-04-98	aarav@gmail.com	9988776655	Pass101	12 MG Road	Bangalore	Tamil Nadu	600001	10-01-25
102	Priya	Reddy	Female	20-08-99	priya@gmail.com	9876543211	Pass102	45 Anna Nagar	Chennai	Tamil Nadu	600040	12-01-25
103	Rahul	Kumar	Male	10-12-97	rahul@gmail.com	9876543212	Pass103	22 Gandhi Road	Coimbatore	Tamil Nadu	641001	15-01-25
104	Sneha	Patel	Female	18-03-00	sneha@gmail.com	9876543213	Pass104	78 Park Street	Madurai	Tamil Nadu	625001	20-01-25
105	Vikram	Singh	Male	25-06-96	vikram@gmail.com 9876543214	Pass105	15 Lake View	Salem	Tamil Nadu	636001	22-01-25
106	Ananya	Das	Female	05-11-98	ananya@gmail.com	9876543215	Pass106	90 Beach Road	Trichy	Tamil Nadu	620001	25-01-25
107	Kiran	Mehta	Male	14-09-95	kiran@gmail.com	9876543216	Pass107	55 Green Park	Erode	Tamil Nadu	638001	01-02-25
108	Divya	Nair	Female	30-01-01	divya@gmail.com	9876543217	Pass108	11 Temple Road	Tirunelveli	Tamil Nadu	627001	05-02-25
109	Rohan	Verma	Male	11-05-99	rohan@gmail.com	9876543218	Pass109	66 River View	Vellore	Tamil Nadu	632001	08-02-25

9 rows selected

COMMIT;