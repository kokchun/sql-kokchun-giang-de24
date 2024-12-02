-- SQL script 

-- skapar en tabell som heter data_jobs och lägger den under schemat main
-- lägger in datan som vi läser från CSV-filen
CREATE TABLE IF NOT EXISTS main.data_jobs AS (
    SELECT * FROM read_csv_auto('data/salaries.csv')
);