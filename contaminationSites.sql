SELECT * FROM (
    SELECT subregion1_name AS state, sum(cumulative_confirmed) AS total_confirmed_cases
    FROM `bigquery-public-data.covid19_open_data.covid19_open_data`
    WHERE country_code="US" AND date='2020-05-25' AND subregion1_name IS NOT NULL
    GROUP BY subregion1_name
    ORDER BY total_confirmed_cases DESC
)WHERE total_confirmed_cases > 1500