Employee Attrition Analysis Using SQL

A structured SQL project analyzing key drivers of employee attrition using the IBM HR Analytics dataset.
This project demonstrates SQL skills in data cleaning, table design, exploratory analysis, and insight generation.

⭐ Project Overview
This project explores why employees leave by analyzing patterns across:

Departments

Job roles
Compensation quartiles
Satisfaction metrics
Stress indicators

All analysis was performed using MySQL, and results were exported as CSV files for transparency and reproducibility.

📁 Repository Structure

Output/
Contains all exported results, including:

Attrition by department
Attrition by job role
Attrition by compensation quartile
Attrition by satisfaction (environment, job, relationship)
Attrition by stress factors (overtime, distance from home, work‑life balance, business travel)
Split tables: Employees_Basics and Employees_Details

SQL Queries/
Contains all SQL scripts used in the project:

Database creation
Table creation (split into Basic + Details)
All analysis queries (department, job role, compensation, satisfaction, stress, etc.)

🧱 Data Preparation
The original IBM dataset was split into two relational tables:

employees_basic → demographic + categorical attributes

employees_details → numeric + satisfaction + compensation attributes

This structure improves clarity and mirrors real‑world HR data modeling.


🔍 Key Analyses Performed

1. Attrition by Department
Identifies which departments experience the highest turnover.

2. Attrition by Job Role
Highlights roles with the greatest attrition risk.

3. Compensation Quartile Analysis
Uses NTILE(4) to group employees into income quartiles and compare attrition rates.

4. Satisfaction Analysis
Examines how satisfaction levels (environment, job, relationship) correlate with attrition.

5. Stress Factor Analysis
Evaluates the impact of Overtime, Distance from home, Work‑life balance and Business travel on attrition likelihood.


📈 Summary of Insights
A few high‑level findings from the analysis:

- Lower compensation quartiles show significantly higher attrition.
- Overtime is one of the strongest predictors of attrition.
- Low satisfaction scores (environment, job, relationship) correlate with higher turnover.
- Employees with poor work‑life balance are more likely to leave. Same thing with those who's on frequent buisness travels.
- Distance from home does not appear to be a strong predictor of attrition
- Sale department has the highest rate of attrition.


🛠️ Tools & Technologies

MySQL — data cleaning, querying, analysis
CSV exports — output storage
GitHub — version control and project documentation



✨ Future Improvements

Build a Power BI or Tableau dashboard using the Output CSVs
Add visualizations for compensation quartiles, satisfaction trends, and stress indicators
