SELECT 
	cr.id,
	CONCAT(cr.first_name, ' ', cr.last_name) AS creator_name ,	
	cr.email
FROM
	creators AS cr
LEFT JOIN 
	creators_board_games AS cbg
ON 
	cbg.creator_id = cr.id
WHERE 
	cbg.creator_id IS NULL;