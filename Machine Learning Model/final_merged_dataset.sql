-- Create and load tables from CSV_Outputs repo folder
CREATE TABLE economic_election (
    "State Country" VARCHAR(50),
    "Candidate" VARCHAR(50),
    "Party" VARCHAR(25),
    "Total Votes" NUMERIC,
    "Percent" NUMERIC,
    "Election Year" NUMERIC,
    "Gross domestic product (GDP)" NUMERIC,
    "Personal income" NUMERIC,
    "Total employment (number of jobs)" NUMERIC
);

CREATE TABLE average_sentiment_by_party_all_years (
    "Year" NUMERIC,
    "Candidate" VARCHAR(50),
    "Avg_Sentiment" NUMERIC
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
    "18+" NUMERIC,
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

-- Rename the column from "18+" to "18-20"
ALTER TABLE Merged_Age_Data
RENAME COLUMN "18+" TO "18-20";

-- Verify data in source tables
SELECT * FROM merged_race_data2 LIMIT 10;
SELECT * FROM Merged_Age_Data LIMIT 10;

-- Create the combined table
CREATE TABLE merged_race_age_data AS
SELECT
    r."state" AS "State Country",
    r."year" AS "Race_Year",
    r."white",
    r."black_or_african_american",
    r."american_indian_and_alaska_native",
    r."asian",
    r."native_hawaiian_and_other_pacific-islander",
    r."hispanic_or_latino_any_race",
    a."Population_Value",
    a."Gender",
    a."Year" AS "Age_Year",
    a."18-20",
    a."65-74",
    a."75-84",
    a."55-59",
    a."60-64"
FROM merged_race_data2 r
JOIN Merged_Age_Data a
ON r."year" = a."Year"
AND r."state" = a."state";

-- Verify the merged_race_age_data table
SELECT * FROM merged_race_age_data LIMIT 10;

-- Merge merged_race_age_data with economic_election
CREATE TABLE merged_race_age_econ_data AS
SELECT
    e."State Country",
    e."Candidate",
    e."Party",
    e."Total Votes",
    e."Percent",
    e."Election Year",
    e."Gross domestic product (GDP)",
    e."Personal income",
    e."Total employment (number of jobs)",
    m."white",
    m."black_or_african_american",
    m."american_indian_and_alaska_native",
    m."asian",
    m."native_hawaiian_and_other_pacific-islander",
    m."hispanic_or_latino_any_race",
    m."Population_Value",
    m."Gender",
    m."18-20",
    m."65-74",
    m."75-84",
    m."55-59",
    m."60-64"
FROM economic_election e
JOIN merged_race_age_data m
ON e."Election Year" = m."Age_Year"
AND e."State Country" = m."State Country";

-- Verify the merged_race_age_econ_data table
SELECT * FROM merged_race_age_econ_data LIMIT 10;

-- Create the final table by merging merged_race_age_econ_data with average_sentiment_by_party_all_years
CREATE TABLE Final_Data_for_ML AS
SELECT
    m."State Country",
    m."Candidate",
    m."Party",
    m."Total Votes",
    m."Percent",
    m."Election Year",
    m."Gross domestic product (GDP)",
    m."Personal income",
    m."Total employment (number of jobs)",
    m."white",
    m."black_or_african_american",
    m."american_indian_and_alaska_native",
    m."asian",
    m."native_hawaiian_and_other_pacific-islander",
    m."hispanic_or_latino_any_race",
    m."Population_Value",
    m."Gender",
    m."18-20",
    m."65-74",
    m."75-84",
    m."55-59",
    m."60-64",
    a."Avg_Sentiment"
FROM merged_race_age_econ_data m
LEFT JOIN average_sentiment_by_party_all_years a
ON m."Election Year" = a."Year"
AND m."Candidate" = a."Candidate";

-- Verify the Final_Data_for_ML table
SELECT * FROM Final_Data_for_ML LIMIT 10;
