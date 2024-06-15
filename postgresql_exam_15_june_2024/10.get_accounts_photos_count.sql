CREATE OR REPLACE FUNCTION udf_accounts_photos_count(account_username VARCHAR(30))
RETURNS INT
AS
$$
	DECLARE number_of_photos INT;
	BEGIN
		SELECT
			COUNT(ph.id)
		INTO number_of_photos
		FROM	
			accounts AS ac
		JOIN
			accounts_photos AS acph
		ON 
			acph.account_id = ac.id
		JOIN	
			photos AS ph
		ON 
			ph.id = acph.photo_id
		WHERE 
			ac.username = account_username;
		RETURN number_of_photos;
	END;
$$
LANGUAGE plpgsql;