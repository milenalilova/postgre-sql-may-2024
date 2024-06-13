SELECT
	f.product_id,
	f.rate,
	f.description,
	f.customer_id,
	c.age,
	c.gender

FROM
	customers AS c
JOIN
	feedbacks AS f
ON
 	f.customer_id = c.id
WHERE 
	(c.gender = 'F' AND c.age > 30) 
		AND 
	f.rate < 5
ORDER BY
	product_id DESC;