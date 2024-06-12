CREATE TABLE IF NOT EXISTS search_results ( 
	id SERIAL PRIMARY KEY, 
	address_name VARCHAR(50), 
	full_name VARCHAR(100), 
	level_of_bill VARCHAR(20), 
	make VARCHAR(30), 
	condition CHAR(1), 
	category_name VARCHAR(50) 
); 

CREATE OR REPLACE PROCEDURE  sp_courses_by_address(address_name VARCHAR(100))
AS
$$
	BEGIN
		TRUNCATE search_results;
		INSERT INTO search_results( 
			address_name, 
			full_name, 
			level_of_bill, 
			make, 
			condition, 
			category_name
		)
		SELECT
			ad.name AS address_name,
			cl.full_name,
			CASE
				WHEN co.bill <=20 THEN 'Low'
				WHEN co.bill <=30 THEN 'Medium'
				ELSE 'High'
			END,
			cr.make,
			cr.condition,
			ca.name AS category_name

		FROM
			courses AS co
		JOIN	
			clients AS cl
		ON 
			cl.id = co.client_id 
		JOIN	
			cars AS cr
		ON cr.id = co.car_id
		JOIN	
			addresses AS ad
		ON 
			ad.id = co.from_address_id	
		JOIN	
			categories AS ca
		ON 
			ca.id = cr.category_id
		WHERE ad.name = address_name
		ORDER BY 
			cr.make,
			cl.full_name;
	END;
$$
LANGUAGE plpgsql;

CALL sp_courses_by_address('700 Monterey Avenue');
SELECT * FROM search_results;

CALL sp_courses_by_address('66 Thompson Drive');
SELECT * FROM search_results;