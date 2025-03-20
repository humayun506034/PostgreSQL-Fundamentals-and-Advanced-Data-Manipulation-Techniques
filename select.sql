-- Active: 1742229780318@@127.0.0.1@5432@ph
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

SELECT * FROM students;

DROP Table students;

INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        'John',
        'Doe',
        20,
        'A+',
        'Computer Science',
        NULL,
        '2005-01-15',
        'O+',
        'USA'
    ),
    (
        'Jane',
        'Smith',
        22,
        'B',
        'Mathematics',
        NULL,
        '2003-04-22',
        'A-',
        'Canada'
    ),
    (
        'Sam',
        'Johnson',
        21,
        'B+',
        'Physics',
        NULL,
        '2004-07-30',
        'B+',
        'UK'
    ),
    (
        'Alice',
        'Williams',
        23,
        'A',
        'Biology',
        'alice.williams@example.com',
        '2002-09-11',
        'O-',
        'Australia'
    ),
    (
        'Bob',
        'Brown',
        24,
        'C+',
        'Chemistry',
        'bob.brown@example.com',
        '2001-11-05',
        'AB+',
        'Germany'
    ),
    (
        'Charlie',
        'Davis',
        19,
        'A-',
        'Engineering',
        'charlie.davis@example.com',
        '2006-02-17',
        'O+',
        'India'
    ),
    (
        'Eva',
        'Miller',
        20,
        'B-',
        'Literature',
        'eva.miller@example.com',
        '2005-05-23',
        'B-',
        'New Zealand'
    ),
    (
        'David',
        'Wilson',
        22,
        'A+',
        'History',
        'david.wilson@example.com',
        '2003-12-30',
        'A+',
        'South Africa'
    ),
    (
        'Sophia',
        'Moore',
        21,
        'C',
        'Art',
        'sophia.moore@example.com',
        '2004-03-12',
        'O+',
        'Brazil'
    ),
    (
        'Liam',
        'Taylor',
        25,
        'A',
        'Economics',
        'liam.taylor@example.com',
        '2000-10-01',
        'AB-',
        'France'
    ),
    (
        'Oliver',
        'Harris',
        23,
        'B+',
        'Business',
        'oliver.harris@example.com',
        '2002-07-10',
        'A+',
        'Canada'
    ),
    (
        'Mia',
        'Clark',
        22,
        'B',
        'Sociology',
        'mia.clark@example.com',
        '2003-05-18',
        'O-',
        'USA'
    ),
    (
        'Lucas',
        'Lewis',
        24,
        'C+',
        'Law',
        'lucas.lewis@example.com',
        '2001-11-30',
        'AB+',
        'Australia'
    ),
    (
        'Isabella',
        'Walker',
        20,
        'A-',
        'Psychology',
        'isabella.walker@example.com',
        '2005-09-25',
        'A-',
        'UK'
    ),
    (
        'Ethan',
        'Young',
        21,
        'B+',
        'Design',
        'ethan.young@example.com',
        '2004-03-17',
        'B+',
        'Germany'
    ),
    (
        'Amelia',
        'King',
        23,
        'A+',
        'Environmental Science',
        'amelia.king@example.com',
        '2002-01-10',
        'O+',
        'South Africa'
    ),
    (
        'James',
        'Scott',
        20,
        'B',
        'Philosophy',
        'james.scott@example.com',
        '2005-06-13',
        'O-',
        'New Zealand'
    ),
    (
        'Ava',
        'Green',
        22,
        'A',
        'Linguistics',
        'ava.green@example.com',
        '2003-10-02',
        'A+',
        'Brazil'
    ),
    (
        'Logan',
        'Adams',
        21,
        'C-',
        'Agriculture',
        'logan.adams@example.com',
        '2004-12-09',
        'B-',
        'France'
    ),
    (
        'Chloe',
        'Baker',
        24,
        'B+',
        'Medicine',
        'chloe.baker@example.com',
        '2001-08-21',
        'AB+',
        'USA'
    );

TRUNCATE TABLE students;

SELECT * FROM students ORDER BY dob ASC;

SELECT DISTINCT blood_group from students;

-- data filtering

-- Select students from the USA

-- Select students with 'A' grade in Biology

-- Select students with a specific blood group ('A+')

-- Select students from the USA or from Australia

-- -Select students from the USA or from Australia and the age is 20

-- -Select students with a grade of 'A' or 'B' in Math or Physics:

-- Solution

-- Select students from the USA

SELECT * FROM students WHERE country = 'USA';

-- Select students with 'A' grade in Biology

SELECT * FROM students WHERE grade = 'A' AND course = 'Biology';

-- Select students with a specific blood group ('A+')

SELECT * FROM students WHERE blood_group = 'A+';

-- Select students from the USA or from Australia

SELECT *
FROM students
WHERE
    country = 'USA'
    OR country = 'Australia';

-- -Select students from the USA or from Australia and the age is 20
SELECT *
FROM students
WHERE (
        country = 'USA'
        OR country = 'Australia'
    )
    AND age = 20;

-- Select student older then 20 years

SELECT * FROM students where age > 20;

SELECT concat(first_name, ' ', last_name) FROM students;

SELECT MIN(age) from students;

SELECT COUNT(*) FROM students;

SELECT * FROM students;

SELECT max(LENGTH(first_name)) FROM students;

SELECT * FROM students WHERE country <> 'USA';

SELECT * FROM students WHERE NOT country = 'USA';

SELECT * FROM students WHERE email IS NOT NULL;

SELECT COALESCE(NULL, NULL, 5)

SELECT COALESCE(email, 'Email Not Provided') as "Email"
FROM students;

SELECT * FROM students;

-- IN Operator

SELECT *
FROM students
WHERE
    country = 'USA'
    OR country = 'Canada'
    OR country = 'UK';

SELECT * FROM students WHERE country IN ('USA', 'UK', 'Canada');

SELECT * FROM students WHERE country NOT IN ('USA', 'UK', 'Canada');

-- BETWEEN Operator

SELECT * FROM students WHERE age BETWEEN 20 AND 24;

SELECT *
FROM students
WHERE
    dob BETWEEN '2001-01-01' AND '2005-01-01'
ORDER BY dob ASC;

-- LINK Operator

SELECT * FROM students WHERE first_name LIKE '__a%';

-- ILIKE Operator

SELECT * FROM students WHERE first_name ILIKE 'a%';

-- LIMIT

SELECT * FROM students LIMIT 5;

-- OFFSET

SELECT * FROM students LIMIT 5 OFFSET 5;

-- Pagination

-- page-1
SELECT * FROM students LIMIT 5 OFFSET 5 * 0;
-- page-2
SELECT * FROM students LIMIT 5 OFFSET 5 * 1;
-- page-3
SELECT * FROM students LIMIT 5 OFFSET 5 * 2;

-- Data Deletion

SELECT * FROM students;

DELETE FROM students 
    WHERE grade = 'B';


-- UPDATE

UPDATE students
    SET email ='default@gmail.com', age =22
    WHERE student_id = 1;