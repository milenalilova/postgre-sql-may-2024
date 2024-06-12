CREATE OR REPLACE FUNCTION fn_creator_with_board_games(first_name_creator VARCHAR(30))
RETURNS INT
AS
$$
	DECLARE games_count INT;
	BEGIN
		SELECT
			COUNT(*)
		INTO games_count
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
		WHERE 
			cr.first_name = first_name_creator;
		RETURN games_count;
			END;
$$
LANGUAGE plpgsql;

SELECT fn_creator_with_board_games('Bruno') 
SELECT fn_creator_with_board_games('Alexander')