-- UUID TUTORIAL


-- Check if you have uuid installed already
SELECT * FROM pg_extension

-- Install uuid
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create: This is how we could add a UUID to our table using uuid_generate_v4
CREATE TABLE PINK_FLOYD (
	id uuid DEFAULT uuid_generate_v4 (),
	album_name VARCHAR NOT NULL,
	release_date DATE NOT NULL,
	PRIMARY KEY (id)
);

-- We declare the primary key at the bottom, like when we were combining two tables to create one.