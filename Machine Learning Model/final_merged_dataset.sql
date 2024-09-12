-- Create and load tables from CSV_Outputs repo folder
CREATE TABLE Econ_Sent_Data (
    "State" VARCHAR(50),
	"Year" NUMERIC,
    "Candidate" VARCHAR(50),
    "Party" VARCHAR(25),
    "Total Votes" NUMERIC,
    "GDP" NUMERIC,
    "Personal Income" NUMERIC,
    "Total Employment" NUMERIC,
	"Average Sentiment Score" NUMERIC
);

CREATE TABLE merged_race_data2 (
    "state" VARCHAR(50),
    "white" NUMERIC,
    "black_or_african_american" NUMERIC,
    "american_indian_and_alaska_native" NUMERIC,
    "asian" NUMERIC,
    "native_hawaiian_and_other_pacific-islander" NUMERIC,
    "hispanic_or_latino_any_race" NUMERIC,
    "year" NUMERIC
);

CREATE TABLE Merged_Age_Data (
    "state" VARCHAR(50),
    "Population_Value" NUMERIC,
    "Gender" VARCHAR(10),
    "Year" NUMERIC,
    "18-20" NUMERIC,
    "65-74" NUMERIC,
    "75-84" NUMERIC,
    "55-59" NUMERIC,
    "60-64" NUMERIC,
    " " NUMERIC,
    "20-24" NUMERIC,
    "25-34" NUMERIC,
    "45-54" NUMERIC,
    "35-44" NUMERIC
);

-- Remove the column with the name " "
ALTER TABLE Merged_Age_Data
DROP COLUMN " ";

-- Verify data in source tables
SELECT * FROM Econ_Sent_Data LIMIT 10;
SELECT * FROM merged_race_data2 LIMIT 10;
SELECT * FROM Merged_Age_Data LIMIT 10;

-- Create the combined table
CREATE TABLE merged_race_age_data AS
SELECT
    r."state" AS "State",
    r."year" AS "Race_Year",
    r."white" AS "White",
    r."black_or_african_american" AS "African American",
    r."american_indian_and_alaska_native" AS "Native Peoples",
    r."asian" AS "Asian",
    r."native_hawaiian_and_other_pacific-islander" AS "Pacific Islanders",
    r."hispanic_or_latino_any_race" AS "Latin",
    a."Population_Value"AS "Population Value",
    a."Gender",
    a."Year" AS "Age_Year",
    a."18-20",
	a."20-24",
	a."25-34",
	a."35-44",
	a."45-54",
	a."55-59",
	a."60-64",
    a."65-74",
    a."75-84"     
FROM merged_race_data2 r
JOIN Merged_Age_Data a
ON r."year" = a."Year"
AND r."state" = a."state";

-- Verify the merged_race_age_data table
SELECT * FROM merged_race_age_data LIMIT 10;

-- Create the combined table with a LEFT JOIN to ensure all rows from Econ_Sent_Data are included
CREATE TABLE merged_demo_econ_sent_data AS
SELECT
    e."State",
    e."Candidate",
    e."Party",
    e."Total Votes",
    e."GDP",
    e."Personal Income",
    e."Total Employment",
    e."Average Sentiment Score",
    m."White",
    m."African American",
    m."Native Peoples",
    m."Asian",
    m."Pacific Islanders",
    m."Latin",
    m."Population Value",
    m."Gender",
    m."18-20",
    m."20-24",
    m."25-34",
    m."35-44",
    m."45-54",
    m."55-59",
    m."60-64",
    m."65-74",
    m."75-84"
FROM Econ_Sent_Data e
LEFT JOIN merged_race_age_data m
ON e."Year" = m."Age_Year"
AND e."State" = m."State";

-- Verify the merged_race_age_econ_data table
SELECT * FROM merged_demo_econ_sent_data LIMIT 10;





