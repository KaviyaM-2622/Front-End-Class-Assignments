use persons;
select 
    full_name,
    CONCAT(
        UPPER(LEFT(TRIM(full_name), 1)),
        LOWER(SUBSTRING(TRIM(full_name), 2))  ) AS formatted_name
from person;
