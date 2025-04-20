# 📊 Event Triggered Incident Analysis
A data analyst portfolio project exploring how different types of events influence short-term stock price movements across various companies.

# 🧠 Objective
To analyze the impact of major events (e.g., layoffs, earnings, geopolitical shifts) on stock performance, identify trends across event types, and showcase data analysis skills using SQL, Python (Pandas), Excel, and PostgreSQL.

#🔍 Key Business Questions
Which types of events most negatively impact stock prices?

How does sentiment score correlate with percent change in stock price?

Which companies are most sensitive to external events?

Do neutral events result in minimal stock movement as expected?

Is there a regional pattern in how events affect stock price volatility?

# 🗃️ Dataset
Source: Manually curated mock dataset (12 companies, 12 events)

Format: CSV → PostgreSQL

Fields Include:
event_id, company, ticker, date, event_title, event_type, sentiment_score, platform_channel, region, incident_volume, closing_price_before, closing_price_after, percent_change, notes
