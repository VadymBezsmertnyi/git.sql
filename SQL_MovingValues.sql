/* You have access to a table of monsters as follows:
 
 ** monsters table schema **
 
 id
 name
 legs
 arms
 characteristics
 Your task is to make a new table where each column should contain the length of the string in the column to its right (last column should contain length of string in the first column). Remember some column values are not currently strings. Column order and titles should remain unchanged:
 
 ** output table schema **
 
 id
 name
 legs
 arms
 characteristics
 */
select
    case
        when id is not null then char_length(name)
    end as id,
    case
        when name is not null then LENGTH (CAST(legs AS TEXT))
    end as name,
    case
        when name is not null then LENGTH (CAST(arms AS TEXT))
    end as legs,
    case
        when name is not null then char_length(characteristics)
    end as arms,
    case
        when name is not null then LENGTH (CAST(id AS TEXT))
    end as characteristics
from
    monsters;

/* SELECT 
 length(name) AS id,
 length(legs::text) AS name,
 length(arms::text) AS legs,
 length(characteristics) AS arms,
 length(id::text) AS characteristics
 FROM
 monsters */