End-to-End Marketing Analytics Project

1. Project Overview

This project is an end-to-end data analysis of an e-commerce company. The company faced declining customer engagement and conversion rates despite high marketing expenses. The goal of this analysis is to diagnose the key drivers of these issues and provide data-driven recommendations to improve marketing ROI, customer engagement, and sales.

This project demonstrates the complete data analysis workflow:

Business Problem Definition

Data Extraction & Transformation (ETL) using SQL

Advanced Analysis (Sentiment Analysis) using Python

Data Modeling & Visualization using Power BI

Reporting & Actionable Recommendations

2. Business Problem

The project began with a business case from "ShopEasy," an online retailer.

Key Problems:

Reduced Customer Engagement: A decline in customer interactions with the site and marketing content.

Decreased Conversion Rates: Fewer site visitors were converting into paying customers.

High Marketing Expenses: Significant investments in campaigns were not yielding the expected returns.

Goals & KPIs:

Goal: Identify factors impacting conversion rates.

KPI: Conversion Rate (%)

Goal: Determine which content types drive the highest engagement.

KPI: Customer Engagement Rate (clicks, likes)

Goal: Understand common themes in customer feedback.

KPI: Customer Feedback Score (Avg. Rating)

3. Tools Used

Database: SQL Server

ETL & Data Cleaning: SQL

Analysis: Python (Pandas, VADER)

Visualization & Modeling: Microsoft Power BI

Reporting: Microsoft PowerPoint

4. Project Workflow

A. Data Extraction & Transformation (ETL)

Data was extracted from the PortfolioProject_MarketingAnalytics SQL database. A series of SQL scripts were used to clean, transform, and model the data into a star schema, creating clear dimension and fact tables.

Scripts Used:

dim_customers.sql: Creates a clean customer dimension by joining customers and geography tables.

dim_products.sql: Cleans the products table and creates a new PriceCategory column (Low, Medium, High) using a CASE statement for easier analysis.

fact_customer_journey.sql: Cleans and de-duplicates the customer_journey table using a Common Table Expression (CTE) with ROW_NUMBER().

fact_engagement_data.sql: Cleans the engagement_data table. This involves:

Splitting the ViewsClicksCombined column into separate Views and Clicks columns.

Standardizing ContentType values (e.g., 'Socialmedia' to 'Social Media').

Filtering out irrelevant 'Newsletter' data.

fact_customer_reviews.sql: Cleans the customer_reviews table by removing extra spaces from ReviewText to prepare it for sentiment analysis.

B. Sentiment Analysis (Python)

The missing Python script (sentiment_analysis.py) performs a crucial analysis step:

Loads Data: Connects to the SQL database (or reads a CSV export of fact_customer_reviews).

Analyzes Sentiment: Uses a Python library (like VADER or TextBlob) to analyze the sentiment of each ReviewText.

Creates New Features: Appends the SentimentScore (a numeric value) and a SentimentCategory (Positive, Negative, Neutral) to each review.

Exports Data: Saves the enriched data as fact_customer_reviews_with_sentiment.csv, which is then loaded into Power BI.

C. Data Modeling & Visualization (Power BI)

All the clean dimension tables (from SQL) and fact tables (from SQL and Python) were loaded into Power BI (marketing analytics dashboard.pbix).

Data Model: A star schema was created by connecting the dimension tables (dim_customers, dim_products) to the fact tables (fact_customer_journey, fact_engagement_data, fact_customer_reviews_with_sentiment) on their respective keys.

DAX Measures: Key measures were created to track KPIs like Conversion Rate, Avg. Rating, Total Views, and Click-Through-Rate (CTR).

Dashboard: An interactive dashboard was built with multiple pages to allow stakeholders to explore:

An executive overview of KPIs.

A deep dive into customer journey and conversion funnels.

An analysis of content engagement.

A detailed breakdown of customer sentiment and reviews.

D. Insights & Recommendations

The final analysis and insights were compiled into a business presentation (marketing analytics presentation.pptx) for stakeholders.

Key Insights:

Conversion Rates: Rates are highly seasonal, peaking at 18.5% in January but dipping to a low of 4.3% in May.

Customer Engagement: While total views are declining, the Click-Through-Rate (CTR) is a healthy 15.37%, indicating that the content is effective for users who see it. The issue is overall reach.

Customer Feedback: The average rating is stable at 3.7/5.0, but this is below the company's target of 4.0. Sentiment analysis revealed that specific products (e.g., those below a 3.5 avg. rating) are significantly pulling down the average.

Actionable Recommendations:

Focus Marketing on High-Performing Products: Target marketing efforts on categories with high conversion rates (Kayaks, Ski Boots) during their peak months (Jan, Feb, July).

Revitalize Content Strategy: Address declining views by experimenting with more engaging content formats (e.g., user-generated content, videos) to improve reach, especially during low-engagement months (Sept-Dec).

Address Negative Feedback: Use the sentiment analysis dashboard to identify products with low ratings. Implement a feedback loop to address common complaints and improve product quality or descriptions.

5. How to Use This Repository

Review the Marketing Analytics Business Case (Clean).pptx to understand the initial problem.

Examine the SQL scripts in the /SQL folder to see the data transformation and modeling process.

(placeholder) Review the sentiment_analysis.py script to understand how customer reviews were analyzed.

Open the marketing analytics dashboard.pbix file in Power BI Desktop to explore the interactive dashboard.

View the marketing analytics presentation.pptx to see the final insights and actionable recommendations.

6. Contact

Name: Hasnat Bin Lubaid

LinkedIn: 

Portfolio: https://github.com/hasnatlubaid
