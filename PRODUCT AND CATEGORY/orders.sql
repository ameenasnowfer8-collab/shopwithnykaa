CREATE TABLE Orders (
    Order_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER,
    Order_Date DATE NOT NULL,
    Shipping_Address VARCHAR2(200) NOT NULL,
    Order_Status VARCHAR2(30) NOT NULL,
    Total_Amount NUMBER(10,2),
    CONSTRAINT fk_orders_customer
        FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID)
);

Table created.

INSERT INTO Orders VALUES
(1, 101, DATE '2026-09-01', 'Chennai, Tamil Nadu', 'Delivered', 1500.00);
1 row created.

INSERT INTO Orders VALUES
(2, 102, DATE '2026-09-03', 'Tambaram, Chennai', 'Shipped', 2300.00);
1 row created.

INSERT INTO Orders VALUES
(3, 103, DATE '2026-09-05', 'Chrompet, Chennai', 'Processing', 1750.00);
1 row created.

INSERT INTO Orders VALUES
(4, 104, DATE '2026-09-08', 'Velachery, Chennai', 'Delivered', 3200.00);
1 row created.

INSERT INTO Orders VALUES
(5, 105, DATE '2026-09-10', 'Guindy, Chennai', 'Pending', 950.00);
1 row created.

SELECT * FROM Orders;

 ORDER_ID CUSTOMER_ID ORDER_DAT
---------- ----------- ---------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
ORDER_STATUS                   TOTAL_AMOUNT
------------------------------ ------------
         1         101 01-SEP-26
Chennai, Tamil Nadu
Delivered                              1500

         2         102 03-SEP-26
Tambaram, Chennai
Shipped                                2300

  ORDER_ID CUSTOMER_ID ORDER_DAT
---------- ----------- ---------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
ORDER_STATUS                   TOTAL_AMOUNT
------------------------------ ------------

         3         103 05-SEP-26
Chrompet, Chennai
Processing                             1750

         4         104 08-SEP-26
Velachery, Chennai

  ORDER_ID CUSTOMER_ID ORDER_DAT
---------- ----------- ---------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
ORDER_STATUS                   TOTAL_AMOUNT
------------------------------ ------------
Delivered                              3200

         5         105 10-SEP-26
Guindy, Chennai
Pending                                 950

 

UPDATE Orders
SET Total_Amount = 1600.00
WHERE Order_ID = 1;
1 row updated.



SELECT * FROM Orders WHERE Order_id = 1;

 ORDER_ID CUSTOMER_ID ORDER_DAT
---------- ----------- ---------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
ORDER_STATUS                   TOTAL_AMOUNT
------------------------------ ------------
         1         101 01-SEP-26
Chennai, Tamil Nadu
Delivered                              1600



UPDATE Orders
SET Order_Date = DATE '2026-09-02'
WHERE Order_ID = 1;

SELECT * FROM Orders WHERE Order_ID = 1;

 ORDER_ID CUSTOMER_ID ORDER_DAT
---------- ----------- ---------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
ORDER_STATUS                   TOTAL_AMOUNT
------------------------------ ------------
         1         101 02-SEP-26
Chennai, Tamil Nadu
Delivered                              1600

SELECT
    o.Customer_ID,
    o.Order_ID,
    o.Order_Date,
    o.Order_Status,
    od.Product_ID,
    od.Quantity,
    od.Unit_Price,
    od.Total_Price
FROM Orders o
JOIN Order_Details od
ON o.Order_ID = od.Order_ID
ORDER BY o.Customer_ID, o.Order_Date;


CUSTOMER_ID   ORDER_ID ORDER_DAT ORDER_STATUS                   PRODUCT_ID
----------- ---------- --------- ------------------------------ ----------
  QUANTITY UNIT_PRICE TOTAL_PRICE
---------- ---------- -----------
        101          1 02-SEP-26 Delivered                            1001
         2        599        1198

        102          2 03-SEP-26 Shipped                              1002
         2        499         998

        103          3 05-SEP-26 Processing                           1003
         1        399         399


CUSTOMER_ID   ORDER_ID ORDER_DAT ORDER_STATUS                   PRODUCT_ID
----------- ---------- --------- ------------------------------ ----------
  QUANTITY UNIT_PRICE TOTAL_PRICE
---------- ---------- -----------
        104          4 08-SEP-26 Delivered                            1004
         2       1299        2598

        105          5 10-SEP-26 Pending                              1005
         1        349         349




SELECT
    Customer_ID,
    COUNT(Order_ID) AS Total_Orders,
    SUM(Total_Amount) AS Total_Amount
FROM Orders
GROUP BY Customer_ID
ORDER BY Customer_ID;

CUSTOMER_ID TOTAL_ORDERS TOTAL_AMOUNT
----------- ------------ ------------
        101            1         1600
        102            1         2300
        103            1         1750
        104            1         3200
        105            1          950
