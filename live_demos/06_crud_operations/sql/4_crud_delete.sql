-- DML
SELECT * FROM database.duckdb WHERE id IN (5,8);

SELECT
	*
FROM
	database.duckdb
WHERE
	word IN ('TIMESTAMPTZ', 'DROP SCHEMA');

DELETE
FROM
	database.duckdb
WHERE
	word IN ('TIMESTAMPTZ', 'DROP SCHEMA');

SELECT * FROM database.duckdb;