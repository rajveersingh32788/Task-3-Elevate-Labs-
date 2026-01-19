CREATE TABLE superstore (
  Row_ID INTEGER,
  Order_ID TEXT,
  Order_Date DATE,
  Ship_Date DATE,
  Ship_Mode TEXT,
  Customer_ID TEXT,
  Customer_Name TEXT,
  Segment TEXT,
  Country TEXT,
  City TEXT,
  State TEXT,
  Postal_Code TEXT,
  Region TEXT,
  Product_ID TEXT,
  Category TEXT,
  Sub_Category TEXT,
  Product_Name TEXT,
  Sales REAL,
  Quantity INTEGER,
  Discount REAL,
  Profit REAL
);
INSERT INTO superstore VALUES
(1,'CA-2016-152156','2016-11-08','2016-11-11','Second Class','CG-12520','Claire Gute','Consumer','United States','Henderson','Kentucky','42420','South','FUR-BO-10001798','Furniture','Bookcases','Bush Somerset Collection Bookcase',261.96,2,0,41.91),
(2,'CA-2016-152156','2016-11-08','2016-11-11','Second Class','CG-12520','Claire Gute','Consumer','United States','Henderson','Kentucky','42420','South','FUR-CH-10000454','Furniture','Chairs','Hon Deluxe Fabric Upholstered Stacking Chairs',731.94,3,0,219.58),
(3,'US-2015-108966','2015-10-11','2015-10-18','Standard Class','SO-20335','Sean O''Donnell','Consumer','United States','Fort Lauderdale','Florida','33311','South','OFF-LA-10000240','Office Supplies','Labels','Self-Adhesive Address Labels',14.62,2,0,6.87);


SELECT * FROM superstore;
SELECT *
FROM superstore
WHERE Category = 'Furniture';
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category;
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
HAVING SUM(Sales) > 100;
SELECT Region,
       COUNT(*) AS Total_Orders,
       AVG(Profit) AS Avg_Profit
FROM superstore
GROUP BY Region;
SELECT *
FROM superstore
WHERE Order_Date BETWEEN '2016-01-01' AND '2016-12-31';
SELECT *
FROM superstore
WHERE Customer_Name LIKE 'C%';
SELECT Customer_Name, SUM(Sales) AS Total_Spent
FROM superstore
GROUP BY Customer_Name
ORDER BY Total_Spent DESC
LIMIT 5;
