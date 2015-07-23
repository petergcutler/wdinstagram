DROP TABLE IF EXISTS entries;
DROP TABLE IF EXISTS comments;

CREATE TABLE entries (
  id SERIAL PRIMARY KEY,
  author TEXT NOT NULL,
  photo_url TEXT NOT NULL,
  date_taken TEXT NOT NULL
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  author TEXT NOT NULL,
  body TEXT NOT NULL,
  date_posted TEXT NOT NULL,
  entry_id INT
);
