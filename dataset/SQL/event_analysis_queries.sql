-- PROJECT QUERIES:

-- Query 1:
-- Which types of events most negatively impact stock prices?
SELECT 
    event_type,
	/*
	Note to self, line 12 means:
	“Give me the average of the percent_change column for each event type,
	rounded to 2 decimal places — and label that new column avg_percent_change in the result.”
	*/
    ROUND(AVG(percent_change), 2) AS avg_percent_change,
    COUNT(*) AS total_events
FROM 
    incidents
GROUP BY 
    event_type
ORDER BY 
    avg_percent_change ASC;
--

-- Query 2:
-- Which companies experienced the most extreme market reactions (positive or negative) from a single event?

-- Top 3 Positive Reactions
SELECT 
    company, 
    ticker,
    date,
    event_title, 
    event_type, 
    percent_change
FROM 
    incidents
ORDER BY 
    percent_change DESC
LIMIT 3;

-- Top 3 Negative Reactions
SELECT 
    company, 
    ticker,
    date,
    event_title, 
    event_type, 
    percent_change
FROM 
    incidents
ORDER BY 
    percent_change ASC
LIMIT 3;
--

-- Query 3:
-- Which event types caused the most impact to company stocks?
SELECT 
    event_type,
    ROUND(AVG(percent_change), 2) AS avg_percent_change,
    COUNT(*) AS number_of_events
FROM 
    incidents
GROUP BY 
    event_type
ORDER BY 
    avg_percent_change DESC;
--


-- Query 4:
-- Which companies experienced the largest average absolute stock price changes in response to events?
SELECT 
    company,
    ticker,
    ROUND(AVG(ABS(percent_change)), 2) AS avg_volatility,
    COUNT(*) AS number_of_events
FROM 
    incidents
GROUP BY 
    company, ticker
ORDER BY 
    avg_volatility DESC
LIMIT 5;
--

-- Query 5: (might change)
-- In terms of average percent change, how did companies' stocks react to events?
SELECT 
    company,
    ROUND(AVG(percent_change), 2) AS avg_percent_change,
    COUNT(*) AS event_count
FROM 
    incidents
GROUP BY 
    company
ORDER BY 
    avg_percent_change DESC;
--


-- END OF PROJECT QUERIES --




-- BASIC QUERIES:

-- view entire table --
SELECT * FROM incidents;
--

-- count the number of rows in the table --
SELECT COUNT(*) FROM incidents;
--

-- what are the unique event types? --
SELECT DISTINCT event_type FROM incidents;
--

-- most recent event date? --
SELECT MAX(date) AS most_recent_event FROM incidents;
--

-- END OF BASIC QUERIES --



-- OTHER QUERIES:

-- 5 companies with highest negative sentiment? --
SELECT company, event_title, sentiment_score
FROM incidents
ORDER BY sentiment_score ASC
LIMIT 5;
--

-- average percent change by event type --
SELECT event_type, ROUND(AVG(percent_change), 2) AS avg_change
FROM incidents
GROUP BY event_type
ORDER BY avg_change ASC;
--

-- how many events occurred per company? --
SELECT company, COUNT(*) AS event_count
FROM incidents
GROUP BY company
ORDER BY event_count DESC;
--


-- top 5 biggest positive reactions
SELECT company, date, event_title, percent_change
FROM incidents
ORDER BY percent_change DESC
LIMIT 5;
--

-- top 5 biggest negative reactions
SELECT company, date, event_title, percent_change
FROM incidents
ORDER BY percent_change ASC
LIMIT 5;
--


-- average stock reaction by event type
SELECT event_type, 
       AVG(percent_change) AS avg_percent_change
FROM incidents
GROUP BY event_type
ORDER BY avg_percent_change DESC;
--

-- sentiment score vs. percentage change in stock price
SELECT sentiment_score, 
       AVG(percent_change) AS avg_percent_change
FROM incidents
GROUP BY sentiment_score
ORDER BY sentiment_score DESC;
--

-- top 5 events with the highest incident volume
SELECT event_title, incident_volume, company, date
FROM incidents
ORDER BY incident_volume DESC
LIMIT 5;
--

-- average incident volume by region
SELECT region, 
       AVG(incident_volume) AS avg_incident_volume
FROM incidents
GROUP BY region
ORDER BY avg_incident_volume DESC;
--

-- END OF OTHER QUERIES --
