SELECT
	cr.last_name,
	CEIL(AVG(bg.rating)) AS average_rating,
	pb.name AS publisher_name

FROM
	creators AS cr
JOIN	
	creators_board_games AS crbg
ON 
	crbg.creator_id = cr.id
JOIN
	board_games AS bg
ON 
	bg.id = crbg.board_game_id
JOIN 
	publishers AS pb
ON 
	bg.publisher_id = pb.id
WHERE 
	pb.name = 'Stonemaier Games'
GROUP BY 
	cr.last_name,
	publisher_name
ORDER BY 
	average_rating DESC;