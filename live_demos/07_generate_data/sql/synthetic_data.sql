-- random function
SELECT RANDOM();

SELECT * FROM generate_series(10);

SELECT FLOOR(RANDOM()*6)+1 AS dices FROM generate_series(10);