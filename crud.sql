/* INSERT
--Додати співробітника Микиту, 90го року народження, зарплата 300$.
//Додати співробітника Світлану с зарплатнею 1200$.
--Додайте двох робітників одним запитом. Ярослав с зарплатнею 1500$ та 80 роком народження та  Павла 
с зарплатнею 1000$ та 93 роком.
//(Також можна додати ще декількох співробітників для виконання наступних завдань)*/

-- @block
  INSERT INTO employees
  (full_name, birthday, salary, email)
  VALUES
  ('Микита', '1983-01-01', 300, 'muk@gmail.com');

-- @block
  INSERT INTO employees
  (full_name, salary, email)
  VALUES ('Світлана', 1200, 'svit@gmail.com');


-- @block
  INSERT INTO employees
  (full_name, birthday, salary, email)
  VALUES
  ('Ярослав', '2007-03-10', 1500, 'yarom@gmail.com'),
  ('Павло', '1980-01-12', 1000, 'pasha@gmail.com');

-- @block
INSERT INTO employees
(full_name, birthday, salary, vacation_days, email)
VALUES
('Микола', '1993-02-02', 4000, 4, 'mykola@gmail.com'),
('Олеся', '1989-02-25', 3000, 20, 'oles@gmail.com'),
('Андрій', '2005-10-10', 1000, 25, 'and@gmail.com'),
('Петро', '1985-05-15', 5000, 7, 'petro@gmail.com'),
('Марія', '2002-03-02', 2500, 15, 'mar@gmail.com');
  
