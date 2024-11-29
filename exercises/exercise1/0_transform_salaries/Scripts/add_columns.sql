-- c and d adding columns
ALTER TABLE main.cleaned_salaries
ADD COLUMN salary_sek_yearly INTEGER;

ALTER TABLE main.cleaned_salaries
ADD COLUMN salary_sek_monthly INTEGER;

ALTER TABLE main.cleaned_salaries
ADD COLUMN salary_level ENUM('low', 'medium', 'high','insanely high');

DESC TABLE cleaned_salaries;

