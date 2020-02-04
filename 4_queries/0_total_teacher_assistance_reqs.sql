SELECT COUNT(assistance_requests.teacher_id) as total_assistances, teachers.name
FROM assistance_requests 
JOIN teachers
ON teachers.id = assistance_requests.teacher_id
GROUP BY name 
HAVING name = 'Waylon Boehm'

