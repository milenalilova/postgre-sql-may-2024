SELECT 
    r.start_point,
    r.end_point,
    c.id,
    CONCAT(c.first_name, ' ', c.last_name) AS leader_name
FROM 
    routes AS r
    JOIN 
    campers AS c ON c.id = r.leader_id;