REPLACE INTO netflix(show_id,type,title,director,cast,country,date_added,release_year,rating,duration,listed_in,description)
SELECT * FROM tabla_tmp;


ALTER TABLE netflix DROP show_id;
