SELECT sum(cumulative_confirmed) AS total_confirmed_cases, sum(cumulative_deceased) AS total_deaths, (sum(cumulative_deceased)/sum(cumulative_confirmed))*100 AS case_fatality_ratio
FROM `bigquery-public-data.covid19_open_data.covid19_open_data`
WHERE country_name="Italy" AND date BETWEEN '2020-04-01'AND '2020-04-30'