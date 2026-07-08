Student GDP & Economic EDA (Python)
📌 Project Overview
Objective: To programmatically load, clean, and profile a global GDP dataset containing IMF, World Bank, and UN estimates to spot key macroeconomic trends.

Organization Type: Corporate Strategy Teams, Economic Research Firms, or Financial Data Procurement Operations.

Business Value: Replaces slow, error-prone manual spreadsheet data cleaning with fast, repeatable code. Stakeholders can immediately drop in raw country files and receive clean, audit-ready data tables in seconds.

🛠️ Technical Skills Demonstrated
Data Processing & Filtering: Utilizing Pandas data structures to cleanly isolate specific columns, drop empty data rows, and manage layout footprints.

Data Type Transformations: Converting rough source text strings into clean numeric columns and structured datetime blocks.

Statistical Outlier Filters: Designing Interquartile Range (IQR) calculations against active DataFrames to screen out extreme values automatically.

Data Distribution Visuals: Using Matplotlib to build customized boxplots and scatter indicators that immediately expose data distribution spreads.

📊 Core Business Scenarios & Analytical Findings
1. Data Ingestion & Initial Structure Mapping
Business Question: What does the base layout of the macroeconomic file look like, and do we have missing rows across the fields?

Python Approach:

Python
import pandas as pd
import numpy as np

# Load the macroeconomic record log
gdp_df = pd.read_csv("GDP (nominal) per Capita.csv")
gdp_df.head()
Key Finding: Gives an immediate look at column structure and catches agency placeholders (like 0 marks) that need fixing before modeling.

Impact for Organization: Provides data engineering and analysis teams with a fast baseline to inspect data schema alignment across multiple global tracking agencies.

2. Null Checking & Strategic Patching
Business Question: Are there empty or unrecorded cells hiding in the dataset, and how can we patch them without breaking the table structure?

Python Approach:

Python
# Swap out missing values with fallback zeros
df = gdp_df.fillna({
   'IMF_Estimate': 0,
   'WorldBank_Estimate': 0,
   'UN_Estimate': 0
})
gdp_clean = df.dropna()
Key Finding: Ensures the final data table is fully uniform and clean, removing any structural data risks before passing tables to live dashboards.

Impact for Organization: Guarantees that future calculations, automated models, and production charts won't drop or throw unexpected runtime errors due to missing cells.

3. Statistical Anomaly Isolation
Business Question: Which countries represent extreme economic anomalies compared to standard global distributions?

Python Approach:

Python
col = 'IMF_Estimate'
Q1 = gdp_df[col].quantile(0.25)
Q3 = gdp_df[col].quantile(0.75)
IQR = Q3 - Q1

lower = Q1 - 1.5 * IQR
upper = Q3 + 1.5 * IQR

# Filter the anomalies
outliers = gdp_df[(gdp_df[col] < lower) | (gdp_df[col] > upper)]
Key Finding: The script automatically flagged 23 outlier economies (including Luxembourg, Ireland, and Switzerland) that sit far outside the average global spread.

Impact for Organization: Economic analysts and strategy teams can instantly isolate these 23 special cases to ensure they don't skew generalized global trend modeling.
upper = Q3 + 1.5 * IQR

# Filter the anomalies
outliers = gdp_df[(gdp_df[col] < lower) | (gdp_df[col] > upper)]
💡 What it means: Automatically flagged 23 outlier economies (like Luxembourg, Ireland, and Switzerland) so analysts know to handle them as special cases during global trend modeling.  
IPYNB

📂 Project Resources & Deliverables
📦 **Interactive Notebook:** [Click here to view my full Python code file](./the_worldu.ipynb)
