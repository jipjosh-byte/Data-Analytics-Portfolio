-- ====================================================================
-- Global Demographic & Macroeconomic Analytics Script
-- Database: World Demographic Schema
-- Capability Showcased: Advanced Aggregation, Multi-table JOINs, and Data Paging
-- ====================================================================

-- 1. Public Health Initiative Resource Prioritization
-- Scenario: Find the sovereign nation recording the peak life expectancy benchmark.
SELECT Name, LifeExpectancy 
FROM country 
WHERE LifeExpectancy IS NOT NULL 
ORDER BY LifeExpectancy DESC 
LIMIT 1;


-- 2. High-Density Market Segmentation for Real Estate Targeting
-- Scenario: Identify municipal targets containing populations over 2,000,000.
SELECT Name, Population 
FROM city 
WHERE Population > 2000000;


-- 3. Capital City Itinerary System Integration
-- Scenario: Extract and verify the exact capital city name for Spain.
SELECT city.Name 
FROM city 
JOIN country ON city.ID = country.Capital 
WHERE country.Name = 'Spain';


-- 4. Regional Volatility & Per-Capita Wealth Tracking
-- Scenario: Approximate per capita wealth by processing GNP against active population metrics.
SELECT city.Name, (country.GNP / country.Population) AS GDP_Per_Capita 
FROM city 
JOIN country ON city.CountryCode = country.Code 
WHERE country.Population > 0 
ORDER BY GDP_Per_Capita DESC;


-- 5. Granular Row Segmentation (Paging)
-- Scenario: Provide data on mid-tier populous cities ranked between 31st and 40th.
SELECT Name, Population 
FROM city 
ORDER BY Population DESC 
LIMIT 10 OFFSET 30;


-- 6. Municipal Pattern Frequency Analysis
-- Scenario: Evaluate duplicate municipal names worldwide to observe naming trends.
SELECT Name, COUNT(*) AS Frequency 
FROM city 
GROUP BY Name 
ORDER BY Name ASC;
