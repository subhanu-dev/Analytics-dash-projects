-- create schema grafana_monitoring;
-- select status, count(*)
-- FROM 
-- `bigquery-public-data.austin_bikeshare.bikeshare_stations` 
-- group by status;

-- SELECT council_district, count(*) as station_count FROM `bigquery-public-data.austin_bikeshare.bikeshare_stations` 
-- where status='active'
-- group by council_district
-- order by council_district


-- SELECT distinct bike_type, count(1) FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` 
-- group by bike_type


-- SELECT distinct subscriber_type , avg(duration_minutes) as avg_trip_duration FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` 
-- group by subscriber_type



select end_station_name, count(1) AS COUNT_OF_TRIPS
from 
`bigquery-public-data.austin_bikeshare.bikeshare_trips` 
GROUP BY END_STATION_NAME
ORDER BY COUNT_OF_TRIPS DESC
LIMIT 10;

SELECT distinct subscriber_type , avg(duration_minutes) as avg_trip_duration 
FROM `bigquery-public-data.austin_bikeshare.bikeshare_trips` 
group by subscriber_type
order by avg_trip_duration desc;

select end_station_name, count(1) AS COUNT_OF_TRIPS
from 
`bigquery-public-data.austin_bikeshare.bikeshare_trips` 
GROUP BY END_STATION_NAME
ORDER BY COUNT_OF_TRIPS DESC
LIMIT 10;


select count(distinct bike_id)
from 
`bigquery-public-data.austin_bikeshare.bikeshare_trips`