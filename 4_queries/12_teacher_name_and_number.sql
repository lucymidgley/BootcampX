SELECT teachers.name AS teacher, cohorts.name AS cohort, COUNT(teachers.name) AS total_assistances
FROM assistance_requests
JOIN students
ON assistance_requests.student_id = students.id
JOIN cohorts
ON students.cohort_id =  cohorts.id
JOIN teachers 
ON teachers.id = assistance_requests.teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;