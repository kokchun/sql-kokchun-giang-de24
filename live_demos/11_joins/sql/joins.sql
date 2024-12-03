DESC;

SELECT * FROM main.plants p ;

SELECT * FROM main.plant_care pc;

-- LEFT JOIN
-- gets all from left table, with or without match in right table 
-- without match -> nulls on right columns
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule,
	pc.sunlight
FROM
	main.plants p
LEFT JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id ; 
	

-- RIGHT JOIN
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule,
	pc.sunlight
FROM
	main.plants p
RIGHT JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id ; 


-- INNER JOIN
-- gets same values on the join condition, intersection, must exist in both tables
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule,
	pc.sunlight
FROM
	main.plants p
INNER JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id ; 


-- gets everything from both tables, nulls where there is no match 
SELECT
	p.plant_id,
	p.plant_name,
	p.type,
	pc.water_schedule,
	pc.sunlight
FROM
	main.plants p
FULL JOIN main.plant_care pc ON
	p.plant_id = pc.plant_id ; 






