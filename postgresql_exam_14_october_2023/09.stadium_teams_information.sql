CREATE OR REPLACE FUNCTION fn_stadium_team_name(stadium_name VARCHAR(30))
RETURNS TABLE (
	team_name VARCHAR(45)
)
AS
$$
	BEGIN
	RETURN QUERY
		SELECT
			t.name
		FROM
			stadiums AS st
		JOIN
			teams AS t
		ON 
			t.stadium_id = st.id
		WHERE
			st.name = stadium_name
		ORDER BY
			t.name ASC;
	END;
$$
LANGUAGE plpgsql;