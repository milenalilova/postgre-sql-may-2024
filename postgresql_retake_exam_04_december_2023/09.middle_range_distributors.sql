SELECT
	d.name AS distributor_name,
	i.name AS ingredient_name,
	p.name AS product_name,
	AVG(rate) AS average_rate
FROM
	distributors AS d
JOIN
	ingredients AS i
ON 
	i.distributor_id = d.id
JOIN
	products_ingredients AS pi
ON 
	pi.ingredient_id = i.id
JOIN
	products AS p
ON 
	p.id = pi.product_id
JOIN
	feedbacks AS f
ON 
	f.product_id = p.id
GROUP BY
	d.name,
	i.name,
	p.name
HAVING
	AVG(rate) BETWEEN 5 AND 8
ORDER BY
	distributor_name ASC,
	ingredient_name ASC,
	product_name ASC;