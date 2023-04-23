CREATE DATABASE IF NOT EXISTS covid_db

CREATE TABLE covid_db.covid_vaccination(
iso_code TEXT,
continent TEXT,
location TEXT,
date TEXT,
new_tests BIGINT,
total_tests BIGINT,
total_tests_per_thousand BIGINT,
new_tests_per_thousand BIGINT,
new_tests_smoothed BIGINT,
new_tests_smoothed_per_thousand FLOAT,
positive_rate FLOAT,
tests_per_case FLOAT,
tests_units BIGINT,
total_vaccinations BIGINT,
people_vaccinated BIGINT,
people_fully_vaccinated BIGINT,
new_vaccinations BIGINT,
new_vaccinations_smoothed BIGINT,
total_vaccinations_per_hundred FLOAT,
people_vaccinated_per_hundred FLOAT,
people_fully_vaccinated_per_hundred FLOAT,
new_vaccinations_smoothed_per_million BIGINT,
stringency_index FLOAT,
population_density FLOAT,
median_age FLOAT,
aged_65_older FLOAT,
aged_70_older FLOAT,
gdp_per_capita FLOAT,
extreme_poverty FLOAT,
cardiovasc_death_rate FLOAT,
diabetes_prevalence FLOAT,
female_smokers FLOAT,
male_smokers FLOAT,
handwashing_facilities FLOAT,
hospital_beds_per_thousand FLOAT,
life_expectancy FLOAT,
human_development_index FLOAT,
excess_mortality FLOAT
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/covid_vaccination.csv' INTO TABLE covid_db.covid_vaccination CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;    

CREATE TABLE covid_db.covid_deaths(
iso_code TEXT,
continent TEXT,
location TEXT,
date TEXT,
population BIGINT,
total_cases BIGINT,
new_cases BIGINT,
new_cases_smoothed FLOAT,
total_deaths BIGINT,
new_deaths BIGINT,
new_deaths_smoothed FLOAT,
total_cases_per_million BIGINT,
new_cases_per_million BIGINT,
new_cases_smoothed_per_million BIGINT,
total_deaths_per_million BIGINT,
new_deaths_per_million BIGINT,
new_deaths_smoothed_per_million FLOAT,
reproduction_rate BIGINT,
icu_patients BIGINT,
icu_patients_per_million BIGINT,
hosp_patients BIGINT,
hosp_patients_per_million BIGINT,
weekly_icu_admissions BIGINT,
weekly_icu_admissions_per_million BIGINT,
weekly_hosp_admissions BIGINT,
weekly_hosp_admissions_per_million BIGINT
);

LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/covid_deaths.csv' INTO TABLE covid_db.covid_deaths CHARACTER SET UTF8 FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 LINES;
