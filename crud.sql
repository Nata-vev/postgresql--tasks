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
  

    /*UPDATE
--Встановити Павлу зарплатню 2000$.
//Співробітнику з id=3 змінити дату народження на 87й рік.
--Всім у кого зарплатня меньше 400$ зробити її 700$.
--Співробітникам з id більше 2 і менше 5 включно встановити кількість днів відпустки 5.
//Перейменуйте Ярослава на Евгена і підніміть йому зарплатню на 200$.*/

-- @block
UPDATE employees
SET salary = 2000
WHERE id = 4;

-- @block
UPDATE employees
SET birthday = '1987-03-10'
WHERE id = 3;

-- @block
UPDATE employees
SET salary = 700
WHERE salary < 400;

-- @block
UPDATE employees
SET vacation_days = 5
WHERE id >= 2 AND id < 5;

-- @block
UPDATE employees
SET full_name = 'Євген', salary = salary + 200
WHERE id = 3;


/*SELECT
--Виведіть співробітника з id = 3.
//Виведіть співробітників с зарплатнею меньше ніж 800$.
--Виведіть співробітників з кількістю днів відпустки більше нуля. Відсортуйте по зростанню дні відпустки.
//Виведіть зарплатню та кількість днів відпустки Евгена.
--Вивести всіх співробітників з ім'ям Петро.
//Вивести перших 3 співробітників з ім'ям НЕ Петро. Відсортувати по спаданню по id.

*Вивести всіх співробітників віком 27 років або с зарплатнею 1000$.
*Вивести всіх співробітників віком від 25 (не включно) до 28 років (включно).
*Вивести всіх співробітників віком від 23 до 27 років включно або з зарплатнею від 400$ до 1000$ включно.
*/

-- @block
SELECT * FROM employees
WHERE id = 3;

-- @block
SELECT * FROM employees
WHERE salary < 800;

-- @block
SELECT * FROM employees
WHERE vacation_days > 0
ORDER BY vacation_days ASC;

-- @block
SELECT salary, vacation_days FROM employees
WHERE id = 3;

-- @block
SELECT * FROM employees
WHERE full_name = 'Петро';

-- @block
SELECT * FROM employees
WHERE full_name != 'Петро'
ORDER BY id DESC
LIMIT 3;
