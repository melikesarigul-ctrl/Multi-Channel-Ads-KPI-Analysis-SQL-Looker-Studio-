# Multi-Channel-Ads-KPI-Analysis-SQL-Looker-Studio-

# Description
- This project integrates Facebook Ads and Google Ads data using SQL Common Table Expressions (CTEs) and visualizes the results in Looker Studio. 

# SQL Data Preparation:
1. Combined Facebook tables (`facebook_ads_basic_daily`, `facebook_adset`, `facebook_campaign`) into a campaign- and ad set-level performance table, including:
   - ad_date
   - campaign_name
   - adset_name
   - spend, impressions, reach, clicks, leads, value
2. Merged Google Ads daily data (`google_ads_basic_daily`) with the Facebook dataset to create a unified cross-platform marketing performance table.
3. Aggregated data by date, campaign, ad set, and media source (Facebook Ads / Google Ads) with key metrics:
   - Total Cost (Ad Spend)
   - Impressions
   - Clicks
   - Conversion Value

# Calculated KPIs:
- Ad Spend Amount
- CPC (Cost Per Click)
- CPM (Cost per 1000 Impressions)
- CTR (Click Through Rate)
- ROMI (Return on Marketing Investment)

# Looker Studio Dashboard:
1. Combined monthly chart: Ad Spend vs ROMI (dual axis), sorted by date.
2. Line chart: Number of active campaigns per month.
3. Campaign performance table with heatmap: Total Ad Spend, CPC, CPM, CTR, ROMI by campaign.
4. Filters: Campaign Name, Ad Date.
- https://lookerstudio.google.com/reporting/d869bba4-0e7d-4cab-9a15-166511c0cd62

# Key Insights
- Top Performer: The Trendy campaign delivers the highest efficiency with a 191 ROMI
- Engagement: Discounts achieves the best engagement with a 0.03 CTR and the lowest CPC (8.88), making it the most effective driver for low-cost traffic.
- Ad Spend reached its peak in April 2022, but ROMI remained stable around 120.
- Campaign activity peaked at 7 in mid-2021 but has significantly decreased since then. By late 2022, the brand moved to a more focused strategy with only 1 active campaign.

# Conclusion
- The final dashboard provides actionable insights for cross-channel marketing performance, budget optimization, and campaign efficiency analysis.
