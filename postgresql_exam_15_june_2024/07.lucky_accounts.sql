SELECT 
	CONCAT(ac.id, ' ', ac.username) AS id_username,
	ac.email
FROM
	accounts AS ac
JOIN
 	accounts_photos AS acph
ON 
	acph.account_id = ac.id
WHERE 
	acph.account_id = acph.photo_id
ORDER BY
	ac.id ASC;