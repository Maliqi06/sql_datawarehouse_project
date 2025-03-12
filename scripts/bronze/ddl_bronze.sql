IF OBJECT_ID('bronze.restaurant_cons_pref', 'U') IS NOT NULL
	DROP TABLE bronze.restaurant_cons_pref;
GO

CREATE TABLE bronze.restaurant_cons_pref (
	consumer_id NVARCHAR(50),
	preferred_cuisine NVARCHAR(50)
);
GO

IF OBJECT_ID('bronze.restaurant_cons', 'U') IS NOT NULL
	DROP TABLE bronze.restaurant_cons;
GO

CREATE TABLE bronze.restaurant_cons (
    consumer_ID NVARCHAR(50), 
    city NVARCHAR(50),
    state_info NVARCHAR(50),
    country NVARCHAR(50),
    latitude DECIMAL(15, 10),
    longitude DECIMAL(15, 10),
    smoker NVARCHAR(30),
    drink_Level NVARCHAR(50),
    transportation_Method NVARCHAR(50),
    marital_Status NVARCHAR(50),
    children NVARCHAR(30),
    age INT,
    occupation NVARCHAR(50),
    budget NVARCHAR(30)
);
GO

IF OBJECT_ID('bronze.restaurant_rest', 'U') IS NOT NULL
	DROP TABLE bronze.restaurant_rest;
GO

CREATE TABLE bronze.restaurant_rest(
    restaurant_ID NVARCHAR(50),
	name_of_restaurant NVARCHAR(100),
    city NVARCHAR(50),
    state_info NVARCHAR(50),
    country NVARCHAR(50),
    zip_Code NVARCHAR(30),
    latitude DECIMAL(15, 10),
    longitude DECIMAL(15, 10),
    alcohol_Service NVARCHAR(30),  
    smoking_Allowed NVARCHAR(30),  
    price NVARCHAR(50),  
    franchise NVARCHAR(30),  
    area NVARCHAR(50),  
    parking NVARCHAR(50)   
);
GO

IF OBJECT_ID('bronze.restaurant_rest_cui', 'U') IS NOT NULL
	DROP TABLE bronze.restaurant_rest_cui;
GO

CREATE TABLE bronze.restaurant_rest_cui (
	restaurant_ID int,
	cuisine NVARCHAR(50)
);
GO

IF OBJECT_ID('bronze.restaurant_rat', 'U') IS NOT NULL
	DROP TABLE bronze.restaurant_rat;
GO

CREATE TABLE bronze.restaurant_rat (
    consumer_ID NVARCHAR(50),
    restaurant_ID INT,
    overall_Rating INT,
    food_Rating INT,
    service_Rating INT,
);
GO
