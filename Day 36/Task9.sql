select
    full_name,
    SUBSTRING_INDEX(TRIM(full_name), ' ', 1) AS first_name,                 
    CASE
        WHEN full_name LIKE '% %' THEN SUBSTRING_INDEX(TRIM(full_name), ' ', -1)
        ELSE NULL
    END AS last_name,                                                      
    CONCAT(
        UPPER(LEFT(SUBSTRING_INDEX(full_name, ' ', 1), 1)),               
        CASE 
            WHEN full_name LIKE '% %' THEN UPPER(LEFT(SUBSTRING_INDEX(TRIM(full_name), ' ', -1), 1))
            ELSE ''
        END
    ) AS initials                                                       
from person;
