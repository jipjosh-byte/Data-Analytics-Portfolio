# Global Demographic & Macroeconomic Analytics (MySQL)

## 📌 Project Overview

* **Objective:** To write highly optimized, analytical SQL queries against standardized multi-table geographic databases to uncover public health insights, urban growth densities, global wealth allocations, and capital distribution trends.


* **Organization Type:** International Healthcare Alliances, Real Estate Quantitative Investment Firms, or Public Sector Demographic Advisory Committees.


* **Business Value:** Converts raw global records into immediate operational intelligence. This allows data-driven organizations to prioritize resource delivery allocations, identify urban real estate investment zones, or evaluate high-net-worth per-capita regional hubs.



---

## 🛠️ Technical Skills Demonstrated

* **Multi-Table Relational JOINs:** Merging key entity dimensions across city and country data boundaries.


* **Mathematical Column Derivations:** Dynamically calculating economic proxies (e.g., GDP per capita) inline.


* **Data Paging & Offsets:** Isolating specific rows (e.g., ranks 31–40) to streamline data extraction for market research studies.


* **Aggregations & Groupings:** Leveraging `COUNT(*)` and `GROUP BY` to track global name frequencies and duplications.



---

## 📊 Core Business Scenarios & Analytical Findings

### 1. Public Health Initiative Prioritization

* **Business Question:** Which sovereign nation has the highest life expectancy to establish an internal healthcare benchmark?


* **SQL Approach:**
```sql
SELECT Name, LifeExpectancy 
FROM country 
WHERE LifeExpectancy IS NOT NULL 
ORDER BY LifeExpectancy DESC 
LIMIT 1;

```


* **Key Finding:** **Andorra** represents the leading nation globally with an elite average life expectancy benchmark of **83.5 years**.


* **Impact for Organization:** Stakeholders can isolate Andorra's systemic healthcare delivery framework to study it as a gold-standard model for other regional rollouts.



---

### 2. High-Density Consumer Market Segmentation

* **Business Question:** Which global municipalities contain massive consumer densities over 2,000,000 residents for targeted expansion?


* **SQL Approach:**
```sql
SELECT Name, Population 
FROM city 
WHERE Population > 2000000;

```


* **Key Finding:** The query isolated a highly targetable list of exactly **92 major global metropolises** meeting the baseline threshold.


* **Impact for Organization:** Marketing and logistics teams can immediately down-select these 92 hubs to maximize return on advertising spend (ROAS) and supply chain efficiency.



---

### 3. Capital City Itinerary System Integration

* **Business Question:** How do we programmatically verify and map the exact capital city name for specific sovereign states (e.g., Spain)?


* **SQL Approach:**
```sql
SELECT city.Name 
FROM city 
JOIN country ON city.ID = country.Capital 
WHERE country.Name = 'Spain';

```


* **Key Finding:** The system successfully resolved the relational pointer to **Madrid**.


* **Impact for Organization:** Ensures data integrity across international travel logs and corporate logistics pipelines, eliminating manual mapping errors.



---

### 4. Regional Volatility & Wealth Tracking

* **Business Question:** Which target areas represent elite economic hubs when approximating per-capita wealth?


* **SQL Approach:**
```sql
SELECT city.Name, (country.GNP / country.Population) AS GDP_Per_Capita 
FROM city 
JOIN country ON city.CountryCode = country.Code 
WHERE country.Population > 0 
ORDER BY GDP_Per_Capita DESC;

```


* **Key Finding:** **Luxembourg** was isolated as the absolute top outlier in the dataset for per-capita wealth.


* **Impact for Organization:** Investment firms can confidently prioritize high-wealth locations for luxury goods deployment or wealth management service expansions.



---

### 5. Granular Row Segmentation for Market Research

* **Business Question:** How can we extract a secondary targeted research tier of populous cities, specifically skipping top outliers to observe mid-tier centers?


* **SQL Approach:**
```sql
SELECT Name, Population 
FROM city 
ORDER BY Population DESC 
LIMIT 10 OFFSET 30;

```


* **Key Finding:** This successfully extracted the mid-tier segment representing cities ranked exactly **31st to 40th globally by population**.


* **Impact for Organization:** Allows market research analysts to study scalable, emerging secondary markets without their data being skewed by mega-cities.



---

## 🌟 Portfolio Story

> "This project showcases my ability to write clean, maintainable SQL queries to extract complex business intelligence from relational databases. It demonstrates that I don't just write code—I interpret database schemas to answer real-world questions about public health, demographics, and economic strategy for senior leadership."
> 
>
