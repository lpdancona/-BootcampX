SELECT cohorts.name, sum(created_at - completed_at)as total_cohort_assistance_duration
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_cohort_assistance_duration;