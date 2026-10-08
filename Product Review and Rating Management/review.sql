CREATE TABLE Review (
    Review_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER,
    Product_ID NUMBER,
    Review_Text VARCHAR2(500) NOT NULL,
    Review_Date DATE NOT NULL,

    CONSTRAINT fk_review_customer
        FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID),

    CONSTRAINT fk_review_product
        FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_ID)
);
Table created.

INSERT INTO Review
VALUES (1, 101, 1001, 'Very good face serum and makes my skin feel fresh.', DATE '2026-10-01');
1 row created.

INSERT INTO Review
VALUES (2, 102, 1002, 'The lipstick has a nice matte finish and good colour.', DATE '2026-10-02');
1 row created.

INSERT INTO Review
VALUES (3, 103, 1003, 'Good shampoo and it helps reduce dandruff.', DATE '2026-10-03');
1 row created.

INSERT INTO Review
VALUES (4, 104, 1004, 'The perfume has a pleasant fragrance and lasts long.', DATE '2026-10-04');
1 row created.

INSERT INTO Review
VALUES (5, 105, 1005, 'The body lotion is smooth and moisturizing.', DATE '2026-10-05');
1 row created.


SELECT
    r.Review_ID,
    r.Customer_ID,
    r.Product_ID,
    p.Product_Name,
    r.Review_Text,
    r.Review_Date
FROM Review r
JOIN Product p
ON r.Product_ID = p.Product_ID
ORDER BY r.Review_Date;


 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         1         101       1001
Vitamin C Face Serum
Very good face serum and makes my skin feel fresh.
01-OCT-26


 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         2         102       1002
Matte Lipstick
The lipstick has a nice matte finish and good colour.
02-OCT-26


 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         3         103       1003
Anti Dandruff Shampoo
Good shampoo and it helps reduce dandruff.
03-OCT-26


 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         4         104       1004
Floral Eau De Parfum
The perfume has a pleasant fragrance and lasts long.
04-OCT-26


 REVIEW_ID CUSTOMER_ID PRODUCT_ID
---------- ----------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
         5         105       1005
Body Lotion
The body lotion is smooth and moisturizing.
05-OCT-26