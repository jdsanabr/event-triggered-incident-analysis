# 📊 Event Triggered Incident Analysis
A data analyst portfolio project exploring how different types of events influence short-term stock price movements across various companies.

# 🧠 Objective
To analyze the impact of major events (e.g., layoffs, earnings, geopolitical shifts) on stock performance, identify trends across event types, and showcase data analysis skills using SQL, Python (Pandas), Excel, and PostgreSQL.

# 🔍 Key Business Questions
Which types of events most negatively impact stock prices?

How does sentiment score correlate with percent change in stock price?

Which companies are most sensitive to external events?

Do neutral events result in minimal stock movement as expected?

Is there a regional pattern in how events affect stock price volatility?

# 🗃️ Dataset
- Source: Manually curated mock dataset (12 companies, 12 events)
- Format: CSV → PostgreSQL
- Fields Include:
event_id, company, ticker, date, event_title, event_type, sentiment_score, platform_channel, region, incident_volume, closing_price_before, closing_price_after, percent_change, notes

# 🛠️ Tools & Technologies
- PostgreSQL (via pgAdmin4)
- SQL
- Python (Jupyter Notebook)
- Pandas
- Excel
- GitHub

# 📈 Methods
- Data Cleaning (Excel & Pandas)
- ETL to PostgreSQL
- Exploratory SQL Queries
- Visualizations (in progress)
- Insights & Business Recommendations

# 📌 Findings & Insights
(Will be added as queries and visuals are completed.)

# 📁 File Structure (Planned)
project/
├── data/
│   ├── incidents_analysis.csv
│   └── cleaned_data.csv
├── notebooks/
│   └── exploratory_analysis.ipynb
├── sql/
│   └── queries.sql
├── visuals/
│   └── sentiment_vs_percent_change.png
├── README.md

# 🚀 Future Work
- Add real-time data from APIs (e.g., Alpha Vantage or Yahoo Finance)
- Train a regression model to predict impact severity
- Expand dataset to 100+ entries
- Automate dashboard reporting (Tableau or Power BI)

# Query 1: Average Market Impact by Event Type
**Objective**:
Understand how different categories of events affect stock price movements on average.

**SQL Query**:
SELECT 
    event_type, 
    ROUND(AVG(percent_change), 2) AS avg_percent_change
FROM 
    incidents
GROUP BY 
    event_type
ORDER BY 
    avg_percent_change DESC;

Event Type | Avg % Change
Earnings / Financial Reporting | 0.37
Promotional / PR | 0.67
Political/Market Sentiment | 4.81
Workforce / Strategic Operations | 0.18
Earnings Report / Corporate Strategy | -0.48
Economic Policy / Federal Reserve Announcement | -1.55
Regulatory/Geopolitical | -6.87
Public Relations / Crisis Event | -4.71
Layoffs | -13.18

🔍 **Key Takeaway**:
Earnings-related events and promotional campaigns tend to have a positive or neutral effect on stock prices.
Events such as layoffs, geopolitical issues, or crises show a notable negative average impact.

# 📌 Query 2: Largest Positive & Negative Market Reactions
**Purpose**:
To identify the events that triggered the most extreme market reactions — both positive and negative — based on the percent change in stock closing price.

**Business Value**:
This insight helps stakeholders pinpoint which event types or companies are most sensitive to external triggers, guiding future risk assessments and opportunity analyses.

**SQL Queries**:
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

Key Findings (based on mock data):

📈 **Positive**:
Events like earnings beats or political endorsements showed a sharp rise in stock price (up to +4.8%).

📉 **Negative**:
Events such as mass layoffs, geopolitical restrictions, and protests had significant negative reactions (as low as −13%).

**Takeaway**:
Understanding which triggers cause volatile swings helps refine communication strategies, crisis management plans, and investor relations.

# 🔍 Query 3: Average Market Reaction by Event Type
**Question**:
How do different types of events (e.g., layoffs, geopolitical changes, earnings reports) typically impact stock prices?

**Purpose**:
To uncover patterns in how each category of event influences market reaction. This allows stakeholders to understand which event types drive the strongest positive or negative responses on average.

**SQL Query**:
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

**Why It Matters**:
This analysis offers insight into market sensitivity by event category. For instance, if "Layoffs" typically result in steep declines, companies may want to control the narrative or time announcements strategically. Conversely, knowing that "Earnings Reports" tend to yield positive returns can help emphasize performance highlights during investor communications.
