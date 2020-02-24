DROP TABLE IF EXISTS reviews;

CREATE TABLE reviews (
  id SERIAL,
  room_id INT NOT NULL,
  name VARCHAR(20) NOT NULL,
  gender SMALLINT,
  profilePicNum SMALLINT, 
  date TIMESTAMP,
  sentence TEXT,
  accuracy_rating SMALLINT,
  location_rating SMALLINT,
  check_in_rating SMALLINT,
  value_rating SMALLINT,
  cleanliness_rating SMALLINT,
  communication_rating SMALLINT,
  overall_rating SMALLINT
);

\COPY reviews FROM 'seedData.csv' WITH (FORMAT CSV);

CREATE INDEX ON reviews (room_id);