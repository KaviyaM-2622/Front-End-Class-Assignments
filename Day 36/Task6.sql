use persons;
select
    full_name,
    birth_date,
    TIMESTAMPDIFF(MONTH, birth_date, CURDATE()) AS months_old
from person;
