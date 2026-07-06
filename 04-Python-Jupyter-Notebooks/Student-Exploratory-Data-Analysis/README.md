# Student Cohort Exploratory Data Analysis & Statistical Visualization (Python)

## 📌 Project Overview
- **Objective:** To programmatically ingest educational performance logs, perform automated data cleaning, engineer categorical performance matrices, and render statistical distribution charts using the Python scientific computing stack.
- **Organization Type:** Academic Administration Teams / Regional School Trust Boards / EdTech Product Platforms.
- **Business Value:** Converts static rows of academic records into a dynamic diagnostic application. By replacing manual report compiling with programmatic loops and functions, institutions can dynamically detect demographic performance variations, track enrollment distributions, and immediately identify struggling student cohorts requiring structured intervention[cite: 2, 6].

## 🛠️ Technical Stack & Frameworks Used
- **Core Engine:** Python 3 (Google Colaboratory / Jupyter Notebook Environment)[cite: 1, 6].
- **Data Manipulation:** Pandas (DataFrames, conditional slicing, groupby aggregations, pivot matrices)[cite: 1, 6].
- **Statistical Visualization:** Matplotlib & Seaborn (Scatter plots, value counts, histograms, heatmaps).

## 📊 Core Data Insights (Soft Skills)

### 1. Gender-Based Achievement Variance
* **Programmatic Aggregate Finding:** Evaluation of the 35-student cohort isolates a definitive performance spread when grouped by gender: Female students recorded a leading average score of **77.31**, compared to Male counterparts at **71.59**[cite: 6].
* **Operational Business Meaning:** Academic directors can leverage this baseline to direct additional targeted mentoring workshops or tailor class support to narrow gender achievement gaps[cite: 2, 6].

### 2. Micro-Level Cohort Disparities (Heatmap Matrix Analysis)
* ** प्रोग्राम्माटिक Finding:** Cross-tabulating Class and Gender parameters via an automated heatmap isolates extreme performance variance[cite: 6]. Females in **Class Six** achieved the peak performance tier with an average mark of **89**, whereas Males in **Class Nine** represented a severe deficit, dropping to an average of **18**[cite: 6].
* **Operational Business Meaning:** Administrators can instantly identify localized pockets of academic risk[cite: 2]. Instead of executing expensive school-wide adjustments, resources can be strategically funneled to address the specific class failure risk in Class Nine[cite: 2, 6].

### 3. Enrollment Distributions & Grade Volatility
* **Programmatic Finding:** Student enrollment count analysis indicates **Class Seven** represents the largest structural cluster with 10 students[cite: 6]. Cohort score distributions (analyzed via histograms) show a heavy density pattern peaking within the **80-90 score bracket**, with a top leaderboard score of **96 achieved by student Kenn Rein**[cite: 6].
* **Operational Business Meaning:** Gives operations management precise visibility into staffing constraints and classroom sizing allocations while confirming overall strong curriculum alignment[cite: 2, 6].

---

## 💻 Code Execution Highlights (Hard Skills)

### 1. Dynamic Performance Grade Engineering
Implemented custom function loops applied systematically across active rows to calculate and map qualitative achievement brackets: Elite (`A` $\ge$ 85), Satisfactory (`B` $\ge$ 70), Borderline (`C` $\ge$ 60), and Unacceptable (`D` $<$ 60)[cite: 6].

```python
def get_grade(score):
    if score >= 85: return 'A'
    elif score >= 70: return 'B'
    elif score >= 60: return 'C'
    else: return 'D'

df['grade'] = df['score'].apply(get_grade)
print(df.sort_values(by='score', ascending=False).head())
