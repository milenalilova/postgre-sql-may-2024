SELECT
	ad.name AS address,
	CASE
		WHEN EXTRACT(HOUR FROM co.start) BETWEEN 6 and 20 THEN 'Day'
		ELSE 'Night'
	END AS day_time,
	co.bill,
	cl.full_name,
	cr.make,
	cr.model,
	ca.name AS category_name
FROM 
	clients AS cl
JOIN 	
	courses AS co
ON co.client_id = cl.id
JOIN	
	cars AS cr
ON cr.id = co.car_id
JOIN 	
	categories AS ca
ON ca.id = cr.category_id
JOIN	
	addresses AS ad
ON ad.id = co.from_address_id
ORDER BY co.id;