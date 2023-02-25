-- create the students table
CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    student_name TEXT,
    student_email TEXT
);

-- insert data into the students table
INSERT INTO students (student_id, student_name, student_email)
VALUES (1, 'rehman', 'amrehman00@gmail.com'),
       (2, 'Jane Smith', 'faizan22@gmail.com'),
       (3, 'Bob Johnson', 'zeshan456@gmail.com');

-- create the courses table
CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT
);

-- insert data into the courses table
INSERT INTO courses (course_id, course_name)
VALUES (1, 'Python'),
       (2, 'UI/UX');

-- create the registered_courses table
CREATE TABLE registered_courses (
    student_id INTEGER,
    course_id INTEGER,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- insert data into the registered_courses table
INSERT INTO registered_courses (student_id, course_id)
VALUES (1, 1),
       (1, 2),
       (2, 1);
