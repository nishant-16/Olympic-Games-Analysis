SELECT
	id,
	name AS 'Competitor Name', --Renamed COLUMN
	CASE
		WHEN sex = 'M' THEN 'Male'
		ELSE 'Female'
	END AS Sex, -- Better name for filters and visualisation
	age,
	CASE
		WHEN Age < 18 THEN 'Under 18'
		WHEN Age BETWEEN 18 AND 25 THEN '18-25'
		WHEN Age BETWEEN 25 AND 30 THEN '25-30'
		WHEN Age > 30 THEN 'Over 30'
	END AS 'Age Grouping',
	height,
	weight,
	NOC AS 'Nation Code',
	year,
	season,
	games,
	city,
	sport,
	event,
	CASE 
		WHEN Medal = 'NA' THEN 'Not Registered' 
		ELSE Medal 
	END AS Medal -- Replaced NA with Not Registered
FROM events
WHERE Season = 'Summer' -- Where Clause to isolate Summer Season
ORDER BY id