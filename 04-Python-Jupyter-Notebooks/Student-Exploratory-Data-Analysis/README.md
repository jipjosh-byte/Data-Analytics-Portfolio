# Student Cohort Exploratory Data Analysis & Statistical Visualization (Python)

📌 Project Quick Summary
🎯 The Goal: Programmatically load, clean, and profile a global GDP dataset containing IMF, World Bank, and UN estimates.  
IPYNB

🏢 Where This Is Used: Strategy, economics, or corporate research teams.

💼 The Business Value: Replaces slow manual Excel cleanup with fast, repeatable code that spots missing fields and formats data in seconds.  
IPYNB

🛠️ Python Skills I Used
🧹 Data Processing: Used Pandas and NumPy to drop missing rows and fix data types.  
IPYNB

⚙️ Outlier Detection: Implemented an Interquartile Range (IQR) filter to catch global economic anomalies automatically.  
IPYNB

📊 Data Visualization: Built boxplots and scatter plots via Matplotlib to instantly see data spreads.  
IPYNB

📊 Core Questions & What the Code Found
1️⃣ Initial Data Loading and Structure
❓ The Question: What does the base layout look like, and do we have missing rows across the fields?  
IPYNB

💻 My Python Code:

Python
import pandas as pd
import numpy as np

# Load dataset
gdp_df = pd.read_csv("GDP (nominal) per Capita.csv")
gdp_df.head()
💡 What it means: Gives an immediate look at column structure and catches agency placeholders (like 0 marks) that need fixing.  
IPYNB

2️⃣ Null Checking & Strategic Patching
❓ The Question: Are there empty cells in the table, and how can we fix them programmatically?  
IPYNB

💻 My Python Code:

Python
# Swap out missing values with fallback zeros
df = gdp_df.fillna({
   'IMF_Estimate': 0,
   'WorldBank_Estimate': 0,
   'UN_Estimate': 0
})
gdp_clean = df.dropna()
💡 What it means: Ensures the table is fully clean so future calculations and charts won't break from missing cells.  
IPYNB

3️⃣ Statistical Outlier Isolation
❓ The Question: Which countries represent extreme economic anomalies compared to the global average?  
IPYNB

💻 My Python Code:

Python
col = 'IMF_Estimate'
Q1 = gdp_df[col].quantile(0.25)
Q3 = gdp_df[col].quantile(0.75)
IQR = Q3 - Q1

lower = Q1 - 1.5 * IQR
upper = Q3 + 1.5 * IQR

# Filter the anomalies
outliers = gdp_df[(gdp_df[col] < lower) | (gdp_df[col] > upper)]
💡 What it means: Automatically flagged 23 outlier economies (like Luxembourg, Ireland, and Switzerland) so analysts know to handle them as special cases during global trend modeling.  
IPYNB

📂 Project Resources & Deliverables
📦 Interactive Notebook: Click here to view my full Python code file
