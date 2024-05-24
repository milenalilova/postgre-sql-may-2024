SELECT
	last_name,
	COUNT(notes) AS notes_with_dumbledore
FROM wizard_deposits
WHERE notes LIKE('%Dumbledore%')
GROUP BY last_name
ORDER BY last_name;

/*
SELECT
	last_name,
	COUNT(*) AS notes_with_dumbledore
FROM wizard_deposits
WHERE notes LIKE('%Dumbledore%')
GROUP BY last_name
ORDER BY last_name;
*/