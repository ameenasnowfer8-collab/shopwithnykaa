CREATE TABLE Rating (
    Rating_ID NUMBER PRIMARY KEY,
    Customer_ID NUMBER,
    Product_ID NUMBER,
    Rating NUMBER(1) NOT NULL,
    Rating_Date DATE NOT NULL,

    CONSTRAINT fk_rating_customer
        FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID),

    CONSTRAINT fk_rating_product
        FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_ID),

    CONSTRAINT chk_rating
        CHECK (Rating BETWEEN 1 AND 5)
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
    Product_ID,
    ROUND(AVG(Rating), 2) AS Average_Rating
FROM Rating
GROUP BY Product_ID
ORDER BY Average_Rating DESC;


PRODUCT_ID AVERAGE_RATING
---------- --------------
      1001              5
      1003              5
      1005              5
      1004              4
      1002              4

SELECT
    p.Product_ID,
    p.Product_Name,
    ROUND(AVG(r.Rating), 2) AS Average_Rating
FROM Product p
JOIN Rating r
ON p.Product_ID = r.Product_ID
GROUP BY p.Product_ID, p.Product_Name
HAVING AVG(r.Rating) >= 4
ORDER BY Average_Rating DESC;      


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
      1001
Vitamin C Face Serum
             5

      1003
Anti Dandruff Shampoo
             5

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------

      1005
Body Lotion
             5

      1004
Floral Eau De Parfum

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
AVERAGE_RATING
--------------
             4

      1002
Matte Lipstick
             4

SELECT
    p.Product_ID,
    p.Product_Name,
    COUNT(r.Rating_ID) AS Total_Ratings,
    ROUND(AVG(r.Rating), 2) AS Average_Rating,
    MIN(r.Rating) AS Minimum_Rating,
    MAX(r.Rating) AS Maximum_Rating
FROM Product p
JOIN Rating r
ON p.Product_ID = r.Product_ID
GROUP BY p.Product_ID, p.Product_Name
ORDER BY Average_Rating DESC;


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_RATINGS AVERAGE_RATING MINIMUM_RATING MAXIMUM_RATING
------------- -------------- -------------- --------------
      1001
Vitamin C Face Serum
            1              5              5              5

      1003
Anti Dandruff Shampoo
            1              5              5              5

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_RATINGS AVERAGE_RATING MINIMUM_RATING MAXIMUM_RATING
------------- -------------- -------------- --------------

      1005
Body Lotion
            1              5              5              5

      1004
Floral Eau De Parfum

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_RATINGS AVERAGE_RATING MINIMUM_RATING MAXIMUM_RATING
------------- -------------- -------------- --------------
            1              4              4              4

      1002
Matte Lipstick
            1              4              4              4