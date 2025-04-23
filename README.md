# 📊 Event-Triggered Incident Analysis

## 🎯 Objective  
This project explores how different types of public events (layoffs, earnings reports, geopolitical issues, etc.) influence the stock price movements of major companies. The goal is to identify patterns between event types, market sentiment, and resulting price changes to inform future market analysis and business strategy.

## 🔍 Key Questions Answered
1. What event types cause the greatest average stock price change?
2. Which companies are most sensitive to external events?
3. How does sentiment score correlate with stock price movement?
4. Are there noticeable geographic patterns tied to market reactions?
5. Do certain platforms amplify market response more than others?

## 🧰 Tools Used
- **PostgreSQL / pgAdmin 4** – for data querying and manipulation  
- **Excel** – for pivot tables and visualizations  
- *Tableau Public planned for future phase*  
- **Python & Jupyter (future phase)** – for potential API integrations or further analysis

## 📁 Dataset  
Data was manually constructed and cleaned to simulate real-world incident reports affecting the stock market.  
CSV file includes:  
- Event metadata (title, date, company, region, etc.)  
- Market reaction (before/after stock price, percent change)  
- Sentiment score  
- Source/platform channel  

> File: `incidents_data.csv`

## 🧠 Key Insights & Visualizations

### 1. Average Percent Change by Event Type  
- 📈 **Insight**: Layoffs and regulatory/geopolitical events had the most negative impact on stock prices.  
- 🎯 **Purpose**: Identify high-impact event categories for risk forecasting  
- 📏 **Metric Used**: `AVG(percent_change)` grouped by `event_type`

---

### 2. Company Sensitivity to Events  
- 📈 **Insight**: Tesla and Nvidia showed stronger price swings, suggesting heightened market sensitivity.  
- 🎯 **Purpose**: Reveal which companies are more volatile following public events  
- 📏 **Metric Used**: `AVG(percent_change)` grouped by `company`

---

### 3. Sentiment Score vs Percent Change (Scatter Plot)  
- 📈 **Insight**: Positive sentiment generally aligned with positive price movement; outliers were observed.  
- 🎯 **Purpose**: Explore the correlation between market sentiment and price reaction  
- 📏 **Metric Used**: `sentiment_score` vs `percent_change` (scatter plot)

---

### 4. Average Percent Change by Region  
- 📈 **Insight**: US-based events showed slightly higher volatility than international ones.  
- 🎯 **Purpose**: Understand if regional factors influence investor behavior  
- 📏 **Metric Used**: `AVG(percent_change)` grouped by `region`

---

### 5. Average Percent Change by Platform Channel  
- 📈 **Insight**: News articles and leaked emails had stronger impact than social media platforms.  
- 🎯 **Purpose**: Determine which platforms amplify or signal market shifts  
- 📏 **Metric Used**: `AVG(percent_change)` grouped by `platform_channel`

---

## 📌 How to Run This Project
1. Open the dataset in Excel to explore raw data and pivot table insights  
2. Run SQL queries (provided in `/SQL/queries.sql`) using PostgreSQL/pgAdmin  
3. View and replicate visualizations in `/Excel/` folder  
4. *(Optional)* Load CSV into Tableau Public to build interactive dashboards

---

## 🚀 Next Steps
- Create Tableau dashboards for advanced data storytelling  
- Integrate external APIs for real stock price history (considering options like Alpha Vantage, Yahoo Finance)   

---

## 👤 Author  
**Jonathan Sanabria**  
📍 Santa Clarita, CA  
📧 [JonathanDavidSanabria@gmail.com](mailto:JonathanDavidSanabria@gmail.com)  
🔗 [LinkedIn](https://www.linkedin.com/in/jonathan-d-sanabria/) | [GitHub](https://github.com/jdsanabr)  
