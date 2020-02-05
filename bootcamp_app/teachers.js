const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
})
const args = process.argv.slice(2);


pool.query(`
SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM assistance_requests
JOIN students
ON assistance_requests.student_id = students.id
JOIN cohorts
ON students.cohort_id =  cohorts.id
JOIN teachers 
ON teachers.id = assistance_requests.teacher_id
WHERE cohorts.name = '${args[0] || 'JUL02'}'
ORDER BY teachers.name;
`)
.then(res => {
  res.rows.forEach(data => {
    console.log(`${data.cohort}: ${data.teacher}`)
  })
})
.catch(err => console.error('query error', err.stack));