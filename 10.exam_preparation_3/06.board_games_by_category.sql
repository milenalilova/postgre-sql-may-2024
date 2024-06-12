SELECT 
	bg.id,
	bg.name,
	bg.release_year,
	ca.name AS category_name
FROM
	board_games AS bg
JOIN 
	categories AS ca
ON 
	ca.id = bg.category_id
WHERE ca.name IN ('Strategy Games', 'Wargames')
ORDER BY 
	bg.release_year DESC;