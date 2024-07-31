# Cars24-Market-Trends

This repository contains data analysis and visualization of car pricing data sourced from the Cars24 website. The project aims to provide insights into car market trends, pricing variations, and other key metrics.

# Project Overview
This project focuses on extracting, cleaning, analyzing, and visualizing car pricing data from Cars24. The goal is to understand the market dynamics and provide useful insights for potential buyers and sellers.

# Dataset
The dataset was sourced from the Cars24 website and includes the following key columns:

Car_Model
Brand
Car_Name
Car_Variant
Car_Transmission
KM_Driven
Owner_Type
Fuel_Type
Registration_ID
Monthly_EMI
Car_Price(lakh)
Downpayment_Amount
Location

# Steps Performed
Data Extraction: Used Selenium and BeautifulSoup to scrape car data from Cars24.
Data Cleaning: Handled null values, removed duplicates, and standardized data types.
SQL Analysis: Imported data into a SQL database and performed various queries.
Excel Dashboard: Created an interactive dashboard with slicers for dynamic filtering.

# Key Insights
Average Price by Brand: Comparison of average car prices across different brands.
Total Cars Sold by Brand: Analysis of the number of cars sold by each brand.
Year-over-Year Price Comparison: Comparison of average car prices from this year to last year.
Count of Cars by Fuel Type: Distribution of cars based on fuel type.
Average Price by Transmission Type: Analysis of car prices based on transmission type.
Distribution of Cars by Location: Geographical distribution of cars.

# Dashboard
The Excel dashboard includes the following features:
Interactive charts and graphs
Slicers for dynamic data filtering
Visual representation of key insights
  
# Future Work
Enhance data extraction process to include more variables.
Incorporate additional analyses such as mileage and condition impact on pricing.
Develop a web-based interactive dashboard.

# Prerequisites
Python 3.x
Selenium
BeautifulSoup
pandas
MySQL
Microsoft Excel
