use persons;
select 
    full_name,
    UPPER(full_name) AS name_uppercase,
    LOWER(full_name) AS name_lowercase
from person;
