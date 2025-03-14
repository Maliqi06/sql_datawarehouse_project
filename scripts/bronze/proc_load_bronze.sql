/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/

EXEC bronze.load_bronze;

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN	
	
	TRUNCATE TABLE bronze.restaurant_rest_cui;
	BULK INSERT bronze.restaurant_rest_cui
	FROM 'C:\SQL2022\restaurant/restaurant_cuisines.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE bronze.restaurant_rest
	BULK INSERT bronze.restaurant_rest
	FROM 'C:\SQL2022\restaurant\restaurants.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE bronze.restaurant_rat
	BULK INSERT bronze.restaurant_rat
	FROM 'C:\SQL2022\restaurant\ratings.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE bronze.restaurant_cons
	BULK INSERT bronze.restaurant_cons
	FROM 'C:\SQL2022\restaurant\consumers.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
	);

	TRUNCATE TABLE bronze.restaurant_cons_pref
	BULK INSERT bronze.restaurant_cons_pref
	FROM 'C:\SQL2022\restaurant\consumer_preferences.csv'
	WITH (
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK 
	);
END
