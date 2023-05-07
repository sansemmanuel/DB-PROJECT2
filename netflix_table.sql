CREATE TABLE netflix (
    n_id INTEGER PRIMARY KEY AUTOINCREMENT,
    show_id TEXT,
    type TEXT,
    title TEXT,
    director TEXT,
    cast TEXT,
    country TEXT,
    date_added TEXT,
    release_year TEXT,
    rating TEXT,
    duration TEXT,
    listed_in TEXT,
    description TEXT
)
DROP TABLE tabla_tmp;
ALTER TABLE netflix DROP COLUMN show_id;
PRAGMA table_info(netflix);