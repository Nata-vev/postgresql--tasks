-- @block
CREATE TABLE workers(
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(64) NOT NULL CONSTRAINT "not empty full name" CHECK (full_name != ''),
  department VARCHAR(200), 
  birthday DATE CHECK (birthday > '1925-01-01' AND birthday <= current_date), 
  salary  NUMERIC CHECK(salary >= 0)
);

-- @block
ALTER TABLE workers
ADD COLUMN vacation_days NUMERIC CHECK(vacation_days > 0),
ADD COLUMN email varchar(256) CONSTRAINT "email must be unique" UNIQUE;

-- @block
ALTER TABLE workers
ALTER COLUMN vacation_days SET DEFAULT NULL;

-- @block
ALTER TABLE workers
ALTER COLUMN email SET NOT NULL;

-- @block
ALTER TABLE workers
ADD CONSTRAINT "not empty email" CHECK (email != '');

-- @block
ALTER TABLE workers
ALTER COLUMN salary SET DEFAULT (500);

-- @block
ALTER TABLE workers
RENAME TO employees;


-- @block
DROP TABLE employees;