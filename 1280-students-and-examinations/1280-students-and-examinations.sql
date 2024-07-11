# Write your MySQL query statement below

SELECT stu.student_id, stu.student_name, sub.subject_name,  (select count(*) from Examinations where student_id = stu.student_id and subject_name = sub.subject_name ) as attended_exams
from Subjects as sub, Students as stu
group by stu.student_id, stu.student_name, sub.subject_name
order by stu.student_id, sub.subject_name