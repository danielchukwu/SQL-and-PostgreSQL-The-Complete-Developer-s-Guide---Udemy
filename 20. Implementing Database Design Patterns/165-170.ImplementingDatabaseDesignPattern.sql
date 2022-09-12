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
