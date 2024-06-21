USE COVID_19

--QUESTIONS


--1. What are the total cumulative cases and deaths reported Globally?

SELECT 
sum(Cases_cumulative_total) as Total_Cases_Globally, 
sum(Deaths_cumulative_total) as Total_Deaths_Globally
FROM COVID19_DATASET


--2. What are the total cumulative cases and deaths reported in each Country?

SELECT
Countries,
sum(Cases_cumulative_total) AS Total_Cases_per_Country,
sum(Deaths_cumulative_total) AS Total_Deaths_per_Country
FROM COVID19_DATASET
GROUP BY Countries


--3. What are the total cumulative cases and deaths reported in each WHO region?

SELECT
WHO_Region,
SUM(Cases_cumulative_total) AS Total_Cases_by_WHO_Region,
SUM(Deaths_cumulative_total) AS Total_Deaths_by_WHO_Region
FROM 
COVID19_DATASET
GROUP BY 
WHO_Region



--4. How many new cases have been reported in the last 7 days for each country?

SELECT 
Countries, 
Cases_newly_reported_in_last_7_days AS New_Cases_Last_7_Days
FROM 
COVID19_DATASET


--5. How many new deaths have been reported in the last 7 days for each country?

SELECT 
Countries, 
Deaths_newly_reported_in_last_7_days AS New_Deaths_Last_7_Days
FROM 
COVID19_DATASET;


--6. Top 10 countries with the highest cumulative cases?

SELECT TOP 10
Countries,
Cases_cumulative_total AS Top_Cumulative_Cases
FROM
COVID19_DATASET
ORDER BY
Cases_cumulative_total DESC

--7. Top 10 countries with the highest cumulative deaths?

SELECT TOP 10
Countries, 
Deaths_cumulative_total AS Top_Cumulative_Deaths
FROM
COVID19_DATASET
ORDER BY
Deaths_cumulative_total DESC


--8. Top WHO Region with the highest cumulative case?
SELECT TOP 1
WHO_Region,
SUM(Cases_cumulative_total) AS Top_Region_Cumulative_Cases
FROM
COVID19_DATASET
GROUP BY
WHO_Region
ORDER BY
Top_Region_Cumulative_Cases DESC


--9. Top WHO Region with the highest cumulative death?
SELECT TOP 1
WHO_Region, 
SUM(Deaths_cumulative_total) AS Top_Region_Cumulative_Deaths
FROM
COVID19_DATASET
GROUP BY
WHO_Region
ORDER BY
Top_Region_Cumulative_Deaths DESC



--10. What is the case fatality rate (CFR) for each country?

SELECT 
Countries, 
Cases_cumulative_total AS Total_Cases, 
Deaths_cumulative_total AS Total_Deaths, 
(CAST(Deaths_cumulative_total AS FLOAT) / CAST(Cases_cumulative_total AS FLOAT)) * 100 AS Case_Fatality_Rate
FROM 
COVID19_DATASET
WHERE Cases_cumulative_total > 0
ORDER BY 
Case_Fatality_Rate DESC


--11. What is the case fatality rate (CFR) for each WHO Region?

SELECT 
WHO_Region,
SUM(Cases_cumulative_total) AS Total_Cases,
SUM(Deaths_cumulative_total) AS Total_Deaths,
(CAST(SUM(Deaths_cumulative_total) AS FLOAT) / CAST(SUM(Cases_cumulative_total) AS FLOAT)) * 100 AS Case_Fatality_Rate
FROM
COVID19_DATASET
WHERE Cases_cumulative_total > 0
GROUP BY 
WHO_Region
ORDER BY 
Case_Fatality_Rate DESC

--12. What is the average Cases and Deaths per 100,000 Population by WHO Region?

SELECT 
WHO_Region AS Region, 
AVG(Cases_cumulative_total_per_100000_population) AS Avg_cases_per_100k,
AVG(Deaths_cumulative_total_per_100000_population) AS Avg_deaths_per_100k
FROM 
COVID19_DATASET
GROUP BY 
WHO_Region
ORDER BY 
Avg_cases_per_100k DESC


--13. Countries with the highest death per 100,000 Population?

SELECT TOP 10
Countries, 
Deaths_cumulative_total_per_100000_population AS Deaths_per_100k
FROM 
COVID19_DATASET
ORDER BY 
Deaths_per_100k DESC



--14. How many new cases and deaths have been reported in the last 24 hours for each country?

SELECT 
Countries, 
Cases_newly_reported_in_last_24_hours AS New_Cases_Last_24_Hours, 
Deaths_newly_reported_in_last_24_hours AS New_Deaths_Last_24_Hours
FROM 
COVID19_DATASET
ORDER BY New_Cases_Last_24_Hours DESC


--15. What is the average number of new cases and deaths reported in the last 7 days for each WHO region?

SELECT 
WHO_Region, 
AVG(Cases_newly_reported_in_last_7_days) AS Avg_New_Cases_Last_7_Days, 
AVG(Deaths_newly_reported_in_last_7_days) AS Avg_New_Deaths_Last_7_Days
FROM 
COVID19_DATASET
GROUP BY 
WHO_Region









