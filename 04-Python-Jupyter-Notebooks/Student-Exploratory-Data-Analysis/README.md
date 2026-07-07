# Student Cohort Exploratory Data Analysis & Statistical Visualization (Python)

## 📌 Project Overview
* **Objective:** To programmatically ingest educational performance logs, perform automated data cleaning, engineer categorical performance matrices, and render statistical distribution charts using the Python scientific computing stack[cite: 1, 6].
* **Organization Type:** Academic Administration Teams / Regional School Trust Boards / EdTech Product Platforms.
* **Business Value:** Converts static rows of academic records into a dynamic diagnostic application. By replacing manual report compiling with programmatic loops and functions, institutions can dynamically detect demographic performance variations, track enrollment distributions, and immediately identify struggling student cohorts requiring structured intervention.

---

## 🛠️ Technical Skills Demonstrated
* **Programmatic Exploratory Data Analysis (EDA):** Loading, profiling, and generating descriptive statistical matrices directly from active dataframes.
* **Data Transformation & Logic Mapping:** Executing clean vectorized loops and mapping custom functions to handle large row operations.
* **Multidimensional Cross-Tabulation:** Building pivot tables across overlapping variables to track localized performance tiers.
* **Statistical Chart Architecture:** Engineering custom histograms, scatter plots, and annotated data heatmaps to turn numeric entries into visual logs.

---

## 📊 Core Business Scenarios & Analytical Findings

### 1. Gender-Based Achievement Variance
* **Business Question:** What is the overarching baseline achievement spread when analyzing our student cohorts by gender?
* **Python Approach:** 
  ```python
  gender_averages = df.groupby('gender')['score'].mean()
  print(gender_averages)

2. Micro-Level Cohort Disparities Business Question: How do class levels and gender categories interact, and where are our highest pockets of academic risk?

  Python Approach:Pythonpivot_table = df.pivot_table(values='score', index='class', columns='gender', aggfunc='mean')
sns.heatmap(pivot_table, annot=True, cmap='Reds')
