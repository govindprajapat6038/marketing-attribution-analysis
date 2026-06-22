-- Total Revenue by Channel

SELECT
    Channel,
    SUM(Revenue) AS Total_Revenue
FROM marketing_data
GROUP BY Channel
ORDER BY Total_Revenue DESC;

-- Total Cost by Channel
SELECT Channel, SUM(Cost) AS Total_Cost
FROM marketing_data
GROUP BY Channel;

-- Total Conversions by Channel
SELECT Channel, SUM(Conversions) AS Total_Conversions
FROM marketing_data
GROUP BY Channel;

-- ROAS by Channel
SELECT Channel,
       SUM(Revenue)/SUM(Cost) AS ROAS
FROM marketing_data
GROUP BY Channel;
-- total revenue
SELECT Campaign_ID,
       SUM(Revenue) AS Total_Revenue
FROM marketing_data
GROUP BY Campaign_ID
ORDER BY Total_Revenue DESC
LIMIT 5;
--c1 conversion rate
SELECT Channel,
       ROUND(SUM(Conversions)/SUM(Clicks)*100,2) AS Conversion_Rate
FROM marketing_data
GROUP BY Channel
ORDER BY Conversion_Rate DESC;
-- c1 cost per conversion
SELECT Channel,
       ROUND(SUM(Cost)/SUM(Conversions),2) AS Cost_Per_Conversion
FROM marketing_data
GROUP BY Channel
ORDER BY Cost_Per_Conversion;

--c1 profit
SELECT Channel,
       SUM(Revenue)-SUM(Cost) AS Profit
FROM marketing_data
GROUP BY Channel
ORDER BY Profit DESC;
--c1 Avg.. revenue
SELECT Channel,
       ROUND(AVG(Revenue),2) AS Avg_Revenue
FROM marketing_data
GROUP BY Channel
ORDER BY Avg_Revenue DESC;