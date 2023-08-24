# LA-Crime-Data-Analysis
The objective of the project was to create innovative and interactive Tableau dashboards to perform crime data analysis in LA from 2020 onwards. 
Data contains 784206 observations of 28 variables. The Dataset contained missing values and was cleaned using the R programming language and Excel. Tableau dashboards were created from the clean dataset.

To view the Tableau dashboards, visit my profile: 

Steps for Data Analysis:
1. Make a copy of the original dataset and then start working on the new dataset.
2. Try to clean up as much as feasible in the Excel file itself
3. Use 'R' to do the major data cleaning
4. Import the clean dataset to visualize in Tableau

Data Cleaning:
1. Deleted the following Columns as the data is not significant for analysis: Crm.Cd.2, Crm.Cd.3,	Crm.Cd.4, Cross.Street
2. Manually updated the Column Names to have more meaningful names
3. Added 2 Columns Country and State and updated them with USA & CA values. This might help in getting the Map
4. Updated Empty Cells with NA
5. Got the Date fields (Date Reported & Date of occurrence) in YYYY-mm-dd format
