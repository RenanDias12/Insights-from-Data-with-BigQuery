WITH deaths_by_states AS (
    SELECT subregion1_name AS state, sum(cumulative_deceased) AS death_count
    FROM `bigquery-public-data.covid19_open_data.covid19_open_data`
    WHERE country_name="United States of America" AND date='2020-05-25' AND subregion1_name IS NOT NULL
    GROUP BY subregion1_name
)
SELECT count(*) AS count_of_states
FROM deaths_by_states
WHERE death_count > 100