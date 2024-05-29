SELECT 
	c.country_name,
	r.river_name
FROM countries AS c
	FULL JOIN countries_rivers AS c_r
 		USING(country_code) 
			FULL JOIN rivers AS r
				ON r.id = c_r.river_id
WHERE c.continent_code ='AF'
ORDER BY c.country_name ASC
LIMIT 5;