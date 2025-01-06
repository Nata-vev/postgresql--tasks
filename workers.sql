-- @block
CREATE TABLE workers(
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(64) NOT NULL CONSTRAINT "not empty full name" CHECK (full_name != ''),
  department VARCHAR(200), 
  birthday DATE CHECK (birthday BETWEEN '2007-01-01' AND current_date), 
  salary  NUMERIC CHECK(salary >= 0)
);
