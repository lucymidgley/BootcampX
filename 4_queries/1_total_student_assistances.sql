SELECT COUNT(assistance_requests.student_id) as total_assistances, students.name
FROM assistance_requests 
JOIN students
ON students.id = assistance_requests.student_id
GROUP BY name 
HAVING name = 'Elliot Dickinson';