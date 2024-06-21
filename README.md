# COVID19_ANALYTICS_PROJECT 

## Table of Contents

- [Project Overview](project-overview)
- [Dataset Description](#dataset-description)
- [Tools Used](#tools-used)
- [Data Preparation and Data Cleaning](#data-preparation-and-data-cleaning)
- [Data Analysis](#data-analysis)
- [Visualization in Power Bi](#visualization-in-power-bi)
- [Findings](#findings)
- [Conclusion](#conclusion)

## Project Overview

**This COVID-19 analytics project** aims to gain insights into the global spread and impact of the COVID-19 virus. By analyzing a comprehensive COVID-19 dataset, we aim to understand trends in cases and deaths across different countries and regions. Our analysis will focus on identifying patterns in COVID-19 cases and deaths, considering geographical location factor. The insights derived from this analysis will inform decision-making processes and aid in the development of effective public health strategies to mitigate the impact of the pandemic.

## Tools Used

- **Power Query**: To clean the data.
- **SQL Server Management Studio(SSMS)**: To analyze data.
- **Power Bi Desktop**: To visualize outcomes.

## Dataset Description

The primary dataset utilized for this analysis is sourced from the "COVID19_data.xlx" file, comprising comprehensive data essential for the COVID-19 analytics project.
- **Country**: Name of the country or territory.
- **WHO Region**: Classification by World Health Organization region.
- **Cases**: Includes cumulative totals, new cases in the last 7 days and 24 hours, and cases per 100,000 population.
- **Deaths**: Includes cumulative totals, new deaths in the last 7 days and 24 hours, and deaths per 100,000 population.
This dataset provides a comprehensive view of COVID-19 cases and deaths across various countries and regions, facilitating a thorough analysis of the pandemic's impact.
  
## Data Preparation and Data Cleaning Process in Power Query

- **Data Load**: Load the dataset into Power Query.
- **Handle Missing Values**: Identify and handle missing values, particularly in the "per 100000 population" columns using the "REPLACE VALUE" option.
- **Updating Data Types**: Review data types of all columns and change data types to the most appropriate type, such as changing text to date or number.
- **Ensuring Data Integrity**: Validate the integrity and consistency of the data by checking for any irregularities or inconsistencies.

## Questions Answered in Data Analysis Process in SQL Server Management Studio(SSMS)

1. What are the total cumulative cases and deaths reported Globally?
2. What are the total cumulative cases and deaths reported in each Country?
3. What are the total cumulative cases and deaths reported in each WHO region?
4. How many new cases have been reported in the last 7 days for each country?
5. How many new deaths have been reported in the last 7 days for each country?
6. Top 10 countries with the highest cumulative cases?
7. Top 10 countries with the highest cumulative deaths?
8. Top WHO Region with the highest cumulative case?
9. Top WHO Region with the highest cumulative death?
10. What is the case fatality rate (CFR) for each country?
11. What is the case fatality rate (CFR) for each WHO Region?
12. What is the average Cases and Deaths per 100,000 Population by WHO Region
13. Countries with the highest death per 100,000 Population?
14. How many new cases and deaths have been reported in the last 24 hours for each country?
15. What is the average number of new cases and deaths reported in the last 7 days for each WHO region?
    
**Note The data file "COVID19_data.xlx" was converted to a .csv file to facilitate querying in SSMS**.

## Visualization in Power BI

- After completing data cleaning and analysis, the results were exported to XLX file, these XLX file served as the basis for creating a visually appealing dashboard in Power BI. 
- The purpose of this Power BI dashboard was to provide a better understanding of the outcomes derived from the data analysis.
- The Power BI dashboard created is interactive, allowing users to explore the data dynamically.
  
## Findings

### Global overview
- **Total global cases**: 562.7M
- **Total global deaths**: 6.4M
  
### Top 5 Countries by Cases and Deaths
- **Highest cases:**
  - United States of America: 88.5M
  - India: 43.8M
  - Brazil: 33.3M
  - France: 32.2M
  - Germany: 30M
    
- **Highest deaths:**
  - United States of America: 1.01M
  - Brazil: 675K
  - India: 526K
  - Russian Federation: 382K
  - Mexico: 327K

### Regional Insights
- **Americas:** Highest total cases and deaths
- **Europe:** Highest new cases in the last 24 hours
- **Americas:** Highest new deaths in the last 24 hours

### Case Fatality Rates (CFR)
- **Notable CFRs:**
  - Yemen: 18.14%
  - Sudan: 7.88%
  - Peru: 5.69%
  - Syrian: 5.62%
  - Mexico: 5.06%  

## Conclusion
This project provides a comprehensive analysis of COVID-19 data across various regions.By using the necessary tools for data preparation and analysis, we were able to derive meaningful insights through calculated metrics and detailed visualizations. These findings are crucial for understanding the pandemic's impact and supporting informed public health decisions.
 













