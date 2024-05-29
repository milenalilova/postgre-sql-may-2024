SELECT 
	m_c.country_code,
	COUNT(*) AS mountain_range_count
FROM mountains_countries AS m_c
	JOIN mountains AS m
 		ON m.id = m_c.mountain_id
WHERE m_c.country_code IN ('US', 'RU', 'BG')
GROUP BY m_c.country_code
ORDER BY mountain_range_count DESC;