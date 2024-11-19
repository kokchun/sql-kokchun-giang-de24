-- update

-- do select before doing update, to make sure what we update
SELECT
	word, learnt
FROM
	database.duckdb
WHERE
	id IN (9, 1, 11);
	
UPDATE
	database.duckdb
SET
	learnt = TRUE
WHERE
	id IN (9, 1, 11);
	
SELECT * FROM database.duckdb;