SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions JOIN students
ON assignment_submissions.student_id  = students.id 
WHERE students.id IN (SELECT students.id
FROM students JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name= 'FEB12');


