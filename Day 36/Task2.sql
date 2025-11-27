use persons;
SELECT
    full_name,
    birth_date,
    DATEDIFF(
        case 
            WHEN DATE_FORMAT(birth_date, CONCAT(YEAR(CURDATE()), '-%m-%d')) > CURDATE()
            THEN DATE_FORMAT(birth_date, CONCAT(YEAR(CURDATE()), '-%m-%d'))
            ELSE DATE_FORMAT(birth_date, CONCAT(YEAR(CURDATE()) + 1, '-%m-%d'))
        end,
        CURDATE()
    ) AS days_until_next_birthday
from person;
