-- SQL - {}
-- goal: implement design pattern for your instagram application on a new database you create -> called instagram. using pgAdmin



-- solution


CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username VARCHAR(30) NOT NULL UNIQUE,
	bio VARCHAR(400),
	avatar VARCHAR(200),
	phone VARCHAR(25),
	email VARCHAR(40),
	password VARCHAR(50),
	status VARCHAR(15),
	
	CHECK (COALESCE(phone, email) IS NOT NULL),
	CHECK (
		(phone IS NOT NULL AND password IS NOT NULL) OR 
		(email IS NOT NULL AND password IS NOT NULL)
	),
	
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE posts (
	id SERIAL PRIMARY KEY,
	url VARCHAR(200) NOT NULL,
	caption VARCHAR(240),
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	
	-- lat: -90  < lat < 90
	-- lng: -180 < lng < 180
	lat REAL CHECK(lat IS NULL OR (lat >= -90 AND lat <= 90)),
	lng REAL CHECK(lng IS NULL OR (lng >= -180 AND lng <= 180)),
	
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE comments (
	id SERIAL PRIMARY KEY,
	contents VARCHAR(240) NOT NULL,
	user_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(id) ON DELETE CASCADE,
	
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);
