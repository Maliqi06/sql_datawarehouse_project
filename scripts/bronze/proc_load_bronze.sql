
BULK INSERT bronze.restaurant_rest_cui
FROM 'C:\restaurant\restaurant_cuisines.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
)


BULK INSERT bronze.restaurant_rest
FROM 'C:\restaurant\restaurants.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
)


BULK INSERT bronze.restaurant_rat
FROM 'C:\restaurant\ratings.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
)

BULK INSERT bronze.restaurant_cons
FROM 'C:\restaurant\consumers.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
)

BULK INSERT bronze.restaurant_cons_pref
FROM 'C:\restaurant\consumer_preferences.csv'
WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
