use persons;
SET @start_date = '2001-08-05';
SET @end_date = CURDATE(); 

select 
    TIMESTAMPDIFF(YEAR, @start_date, @end_date) AS years_diff,
    TIMESTAMPDIFF(MONTH, @start_date, @end_date) AS months_diff,
    DATEDIFF(@end_date, @start_date) AS days_diff;
