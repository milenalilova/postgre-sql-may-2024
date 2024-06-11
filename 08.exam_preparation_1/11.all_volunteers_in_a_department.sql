CREATE OR REPLACE FUNCTION fn_get_volunteers_count_from_department(searched_volunteers_department VARCHAR(30))
RETURNS INT AS
$$
	DECLARE volunteers_count INT;
	BEGIN
		SELECT
			COUNT(*)
		INTO volunteers_count
		FROM
			volunteers AS v
		JOIN 
			volunteers_departments AS vd
		ON vd.id = v.department_id
		WHERE vd.department_name = searched_volunteers_department;
		RETURN volunteers_count;
	END;
$$
LANGUAGE plpgsql;


SELECT fn_get_volunteers_count_from_department('Education program assistant')
SELECT fn_get_volunteers_count_from_department('Guest engagement')
SELECT fn_get_volunteers_count_from_department('Zoo events')
