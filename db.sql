-- Create database with owner set to local user
CREATE DATABASE scuba OWNER matthew;

CREATE TABLE employee (
  employee_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE holiday_maker (
  maker_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  party_id INT REFERENCES holiday_party
);

CREATE TABLE holiday_party (
  party_id SERIAL PRIMARY KEY,
  group_leader INT NOT NULL
);

CREATE TABLE booking (
  booking_id SERIAL PRIMARY KEY,
  booking_date DATE NOT NULL DEFAULT CURRENT_DATE,
  start_date DATE NOT NULL,
  stay_duration INT NOT NULL, --seconds
  employee_id INT REFERENCES employee,
  party_id INT REFERENCES holiday_party
);

CREATE TABLE location (
  location_id SERIAL PRIMARY KEY,
  coordinates SMALLINT NOT NULL,
  travel_time SMALLINT NOT NULL, -- seconds
  depth INT NOT NULL, -- meters
  description TEXT
);

CREATE TABLE dive (
  dive_id SERIAL PRIMARY KEY,
  location_id INT REFERENCES location NOT NULL,
  divemater INT NOT NULL,
  time VARCHAR(2) NOT NULL
);

CREATE TABLE cabin (
  cabin_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  daily_rate SMALLINT NOT NULL,
  bedrooms SMALLINT NOT NULL
);

CREATE TABLE holiday_party_cabin (
  party_id INT REFERENCES holiday_maker,
  cabin_id INT REFERENCES cabin,
  PRIMARY KEY(party_id, cabin_id)
);