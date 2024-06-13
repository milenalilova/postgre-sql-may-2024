SELECT 
	p.name AS product_name,
	p.price AS average_price,
	COUNT(f.customer_id) AS total_feedbacks
FROM
	products AS p
JOIN
	feedbacks AS f
ON
	f.product_id = p.id
WHERE 
	p.price > 15
GROUP BY 
	product_name,
	average_price
HAVING 
	COUNT(f.customer_id) > 1
ORDER BY
	total_feedbacks ASC,
	average_price DESC;