

## 🐍 Student GDP & Economic Analysis (Python)

### **📌 Project Overview**

Programmatically load, clean, and profile a global GDP dataset containing IMF, World Bank, and UN estimates to isolate major macroeconomic trends.

* **🏢 Target Organisation Type:** Corporate Strategy Teams, Economic Research Firms, or Financial Data Procurement Operations.
* **💰 Business Value:** Replaces slow, error-prone manual spreadsheet cleaning with automated, repeatable code. Stakeholders can drop in raw country files and generate clean, audit-ready tables in seconds.

---

### **🛠️ Technical Skills Demonstrated**

* **Data Processing & Filtering:** Using Pandas to isolate columns, drop empty rows, and optimize dataframe layout footprints.
* **Data Type Transformations:** Converting raw source strings into clean numeric columns and structured datetime blocks.
* **Statistical Outlier Filters:** Coding Interquartile Range (IQR) calculations against active DataFrames to screen out extreme values automatically.
* **Data Distribution Visuals:** Leveraging Matplotlib to generate custom boxplots and scatter indicators to immediately expose data spreads.

---

### **📊 Core Business Scenarios & Analytical Findings**

#### **1. Data Ingestion & Initial Structure Mapping**

* **🔍 Business Question:** What does the base layout of the macroeconomic file look like, and do we have missing rows across the fields?
* **💻 Python Approach:**

```python
import pandas as pd
import numpy as np

# Load the macroeconomic record log
gdp_df = pd.read_csv("GDP (nominal) per Capita.csv")
gdp_df.head()

```

* **💡 Key Finding:** Provides an immediate view of column structure and catches agency placeholders (like `0` marks) before modeling.
* **🚀 Organisation Impact:** Gives data engineering and analysis teams a fast baseline to inspect schema alignment across multiple global tracking agencies.

---

#### **2. Null Checking & Strategic Patching**

* **🔍 Business Question:** Are there empty or unrecorded cells hiding in the dataset, and how can we patch them without breaking the table structure?
* **💻 Python Approach:**

```python
# Swap out missing values with fallback zeros
df = gdp_df.fillna({
   'IMF_Estimate': 0,
   'WorldBank_Estimate': 0,
   'UN_Estimate': 0
})
gdp_clean = df.dropna()

```

* **💡 Key Finding:** Ensures the final data table is fully uniform and complete, removing structural data risks before dashboard deployment.
* **🚀 Organisation Impact:** Guarantees that future calculations, automated models, and production charts won't drop data or throw runtime errors due to missing cells.

---

#### **3. Statistical Anomaly Isolation**

* **🔍 Business Question:** Which countries represent extreme economic anomalies compared to standard global distributions?
* **💻 Python Approach:**

```python
col = 'IMF_Estimate'
Q1 = gdp_df[col].quantile(0.25)
Q3 = gdp_df[col].quantile(0.75)
IQR = Q3 - Q1

lower = Q1 - (1.5 * IQR)
upper = Q3 + (1.5 * IQR)

# Filter the anomalies
outliers = gdp_df[(gdp_df[col] < lower) | (gdp_df[col] > upper)]

```

* **💡 Key Finding:** The script automatically flags 23 outlier economies (including Luxembourg, Ireland, and Switzerland) sitting far outside the average global spread.
* **🚀 Organisation Impact:** Strategy teams can instantly isolate these 23 special cases to ensure unique economies do not skew generalized global trend modeling.
📂 Project Resources & Deliverables
📦 **Interactive Notebook:** [Click here to view my full Python code file](./the_worldu.ipynb)
