use persons;
select
    CURDATE() AS today,
    STR_TO_DATE(CONCAT(YEAR(CURDATE()) + 1, '-01-01'), '%Y-%m-%d') AS new_year,
    DATEDIFF(
        STR_TO_DATE(CONCAT(YEAR(CURDATE()) + 1, '-01-01'), '%Y-%m-%d'), 
        CURDATE()
    ) AS days_left;
