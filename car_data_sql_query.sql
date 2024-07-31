-- Create a Database then use the Database

use car_data_db;

-- Create a Table having Colums:

--'Car_Model', 'Brand', 'Car_Name', 'Car_Variant', 'Car_Transmission', 'KM_Driven', 'Owner_Type', 'Fuel_Type', 'Registration_ID', 'Monthly_EMI', 'Car_Price(lakh)', 'Downpayment_Amount', 'Location'

show tables;

select * from car_data1;

-- Question 1
-- Least expensive cars for each brand

SELECT
    Brand,
    Car_Model,
    Car_Name,
    Car_Variant,
    Car_Transmission,
    KM_Driven,
    Owner_Type,
    Fuel_Type,
    Registration_ID,
    Monthly_EMI,
    'Car_Price(In Lakhs)',
    Downpayment_Amount,
    Location
FROM
    Car_data1
WHERE
    ('Car_Price(In Lakhs)' , Brand) IN (SELECT
            MIN('Car_Price(In Lakhs)'), Brand
        FROM
            Car_data1
        GROUP BY Brand);


-- Most expensive cars for each brand

SELECT
    Brand,
    Car_Model,
    Car_Name,
    Car_Variant,
    Car_Transmission,
    KM_Driven,
    Owner_Type,
    Fuel_Type,
    Registration_ID,
    Monthly_EMI,
    'Car_Price(In Lakhs)',
    Downpayment_Amount,
    Location
FROM
    Car_data1
WHERE
    ('Car_Price(In Lakhs)' , Brand) IN (SELECT
            MAX('Car_Price(In Lakhs)'), Brand
        FROM
            Car_data1
        GROUP BY Brand);


-- Question 2
-- Average prices of cars from each brand this year (2024)

SELECT Brand, AVG(`Car_Price(In Lakhs)`) as 'Avg_Price_This_Year(lakh)'
FROM car_data1
WHERE car_model = YEAR(CURDATE())
GROUP BY Brand;
-- Hyundai	9.99


-- Average prices of cars from each brand last year (2023)

SELECT Brand, AVG(`Car_Price(In Lakhs)`) as 'Avg_Price_Last_Year(lakh)'
FROM car_data1
WHERE car_model = YEAR(CURDATE()) - 1
GROUP BY Brand;

-- Hyundai	8.34
-- Maruti	7.665
-- Renault	5.64
-- Tata	8.004999999999999
-- Volkswagen	17.32



-- Combining Both Queries for Comparison
SELECT
    this_year.Brand,
    this_year.Avg_Price_This_Year,
    last_year.Avg_Price_Last_Year,
    (this_year.Avg_Price_This_Year - last_year.Avg_Price_Last_Year) AS Price_Change
FROM (
    SELECT
        Brand,
        AVG(`Car_Price(In Lakhs)`) AS Avg_Price_This_Year
    FROM Car_data1
    WHERE LEFT(Car_Model, 4) = YEAR(CURDATE())
    GROUP BY Brand
) AS this_year
LEFT JOIN (
    SELECT
        Brand,
        AVG(`Car_Price(In Lakhs)`) AS Avg_Price_Last_Year
    FROM Car_data1
    WHERE LEFT(Car_Model, 4) = YEAR(CURDATE()) - 1
    GROUP BY Brand
) AS last_year ON this_year.Brand = last_year.Brand;
