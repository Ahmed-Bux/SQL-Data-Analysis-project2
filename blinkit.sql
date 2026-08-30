LOAD DATA INFILE 'D:/New folder (3)/Uploads/Blinkits Grocery Data.csv'
INTO TABLE blinkit
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;



create table Blinkit(
		Item_Fat_Content VARCHAR(200),
		Item_Identifier VARCHAR(200),
		Item_Type VARCHAR(200),
		Outlet_Establishment_Year VARCHAR(200),
		Outlet_Identifier VARCHAR(200),
        Outlet_Location_Type VARCHAR(200),
        Outlet_Size VARCHAR(200),
        Outlet_Type	VARCHAR(300),
        Item_Visibility	DECIMAL(15,10),
        Item_Weight DECIMAL(10,5) NULL,
        Total_Sales DECIMAL(10,7),
        Rating  DECIMAL(3,1)
);



-- Given the right name
UPDATE BLINKIT 
SET item_fat_content = 
CASE WHEN item_fat_content IN ('LF','Low fat') THEN 'Low Fat'
When Item_fat_content = 'reg' THEN 'Regular'
ELSE item_fat_content
END;

-- Total Sales
SELECT CAST(SUM(total_Sales)/1000000 AS DECIMAL(10,2)) AS Total_Sales_Millions
from blinkit;

-- AVG Sales
SELECT CAST(AVG(Total_sales) AS DECIMAL(10,0)) AS AVG_SALES from blinkit;

-- Total Orders
SELECT COUNT(*) AS No_OF_Orders FROM blinkit;

-- AVG RATING
SELECT CAST(AVG(Rating) AS DECIMAL(10,2)) 
AS No_OF_Orders FROM blinkit;

-- Total Sales by Fat Content
SELECT item_fat_content, 
	(CAST(SUM(total_sales) AS DECIMAL(10,2))) AS Total_Sales,
    CAST(AVG(Total_sales) AS DECIMAL(10,0)) AS AVG_SALES,
    COUNT(*) AS No_OF_Orders,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS No_OF_Orders
FROM blinkit 
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC;

-- Total Sales by Item Type:
SELECT item_type, 
	(CAST(SUM(total_sales) AS DECIMAL(10,2))) AS Total_Sales,
    CAST(AVG(Total_sales) AS DECIMAL(10,0)) AS AVG_SALES,
    COUNT(*) AS No_OF_Orders,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS No_OF_Orders
FROM blinkit 
GROUP BY Item_Type;


-- Fat Content by Outlet for Total Sales:

SELECT Outlet_Location_Type, Item_Fat_Content, 
	(CAST(SUM(total_sales) AS DECIMAL(10,2))) AS Total_Sales,
    CAST(AVG(Total_sales) AS DECIMAL(10,0)) AS AVG_SALES,
    COUNT(*) AS No_OF_Orders,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS No_OF_Orders
FROM blinkit 
GROUP BY Outlet_Location_Type, Item_Fat_Content
ORDER BY Total_Sales DESC;

select * from blinkit;
-- Total Sales by Outlet Establishment
SELECT Outlet_Establishment_Year,
	(CAST(SUM(total_sales) AS DECIMAL(10,2))) AS Total_Sales,
	CAST(AVG(Total_sales) AS DECIMAL(10,0)) AS AVG_SALES,
    COUNT(*) AS No_OF_Orders,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS No_OF_Orders
FROM blinkit 
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year ASC;


-- Percentage of Sales by Outlet Size:

SELECT Outlet_Size,
	(CAST(SUM(total_sales) AS DECIMAL(10,2))) AS Total_Sales,
    (CAST((SUM(total_sales)*100)/ (SUM(SUM(Total_Sales)) over()) 
		AS DECIMAL(10,2))) AS Total_Sales_Percentage
FROM blinkit 
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

-- Sales by Outlet Location:
SELECT Outlet_Location_Type,
	(CAST(SUM(total_sales) AS DECIMAL(10,2))) AS Total_Sales,
	CAST(AVG(Total_sales) AS DECIMAL(10,0)) AS AVG_SALES,
    COUNT(*) AS No_OF_Orders,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS No_OF_Orders,
	(CAST((SUM(total_sales)*100)/ (SUM(SUM(Total_Sales)) over()) 
		AS DECIMAL(10,2))) AS Total_Sales_Percentage
FROM blinkit 
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;

-- All Metrics by Outlet Type
SELECT Outlet_Type,
	(CAST(SUM(total_sales) AS DECIMAL(10,2))) AS Total_Sales,
	CAST(AVG(Total_sales) AS DECIMAL(10,0)) AS AVG_SALES,
    COUNT(*) AS No_OF_Orders,
    CAST(AVG(Rating) AS DECIMAL(10,2)) AS No_OF_Orders,
	(CAST((SUM(total_sales)*100)/ (SUM(SUM(Total_Sales)) over()) 
		AS DECIMAL(10,2))) AS Total_Sales_Percentage
FROM blinkit 
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;