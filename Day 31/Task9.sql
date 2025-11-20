use edu_platform

ALTER TABLE assignments
ADD lesson_id INT;

ALTER TABLE assignments
ADD CONSTRAINT fk_lesson_assignment
FOREIGN KEY (lesson_id)
REFERENCES lessons(lesson_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

INSERT INTO lessons (lesson_title)
VALUES ('HTML Fundamentals');

INSERT INTO assignments (course_id, title, description, due_date, lesson_id)
VALUES (50, 'Frontend', 'HTML', '2025-04-04', 1);

SELECT
    assignments.assignment_id,
    assignments.title,
    lessons.lesson_title
FROM assignments
JOIN lessons
ON assignments.lesson_id = lessons.lesson_id;