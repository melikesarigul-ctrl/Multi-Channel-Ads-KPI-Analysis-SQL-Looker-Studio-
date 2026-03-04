with all_facebook_data as (
select
fabd.ad_date, fc.campaign_name, fa.adset_name,
fabd.spend, fabd.impressions, fabd.reach, fabd.clicks, fabd.leads , fabd.value,
'Facebook Ads' as media_source
from facebook_ads_basic_daily fabd
left join facebook_adset fa on fa.adset_id = fabd.adset_id 
left join facebook_campaign fc on fc.campaign_id = fabd.campaign_id 
union all
select 
ad_date,
campaign_name, adset_name,
spend, impressions, reach, clicks, leads, value, 'Google Ads' as media_source
from google_ads_basic_daily
) 
select 
ad_date,
media_source,
campaign_name,
adset_name,
sum(spend) as total_spend,
sum(impressions) as total_impressions,
sum(clicks) as total_clicks,
sum(value) as total_conversion_value
from all_facebook_data
group by ad_date, media_source, campaign_name, adset_name 
order by ad_date, media_source, campaign_name, adset_name;
"