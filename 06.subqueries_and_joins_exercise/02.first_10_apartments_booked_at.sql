SELECT 
	a."name",
	a.country,
	b.booked_at::date
FROM apartments AS a
	LEFT JOIN bookings AS b
		ON b.booking_id = a.booking_id
LIMIT 10;