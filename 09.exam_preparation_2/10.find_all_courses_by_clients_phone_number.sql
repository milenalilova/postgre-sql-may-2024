CREATE OR REPLACE FUNCTION fn_courses_by_client(phone_num VARCHAR(20)) 
RETURNS INT
AS 
$$
	DECLARE courses_count INT;
	BEGIN
		SELECT 
			COUNT(*)
		INTO courses_count
		FROM
			clients AS cl
		JOIN 
			courses AS co
		ON 
			co.client_id = cl.id
		WHERE cl.phone_number = phone_num;
		RETURN courses_count;
	END;
$$
LANGUAGE plpgsql;

SELECT fn_courses_by_client('(803) 6386812');
SELECT fn_courses_by_client('(831) 1391236');
SELECT fn_courses_by_client('(704) 2502909');