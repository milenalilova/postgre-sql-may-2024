SELECT
	bg.name,
	bg.rating,
	ca.name AS category_name
FROM
	board_games AS bg
JOIN 
	categories AS ca
ON 
	bg.category_id = ca.id 
JOIN 
	players_ranges AS pr
ON 
	pr.id = bg.players_range_id
WHERE 
	(bg.rating > 7 
		AND 
	bg.name ILIKE '%a%')
		OR 
	(bg.rating > 7.5
		AND 
		pr.min_players >= 2 
		AND 
		pr.max_players <= 5)
		
ORDER BY 
	bg.name ASC,
	bg.rating DESC
LIMIT 5;