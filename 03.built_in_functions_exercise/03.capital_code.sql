ALTER TABLE countries
ADD COLUMN capital_code CHAR(2);
UPDATE countries
SET capital_code = SUBSTRING(capital, 1, 2) -- SUBSTRING(capital FROM 1 FOR 2)