REPLACE INTO netflix(type,title,director,cast,country,date_added,release_year,rating,duration,listed_in,description)
SELECT type,title,director,cast,country,date_added,release_year,rating,duration,listed_in,description
FROM tabla_tmp
WHERE show_id IS NULL;