# Write your MySQL query statement below

SELECT p1.machine_id, round(avg(p2.timestamp - p1.timestamp), 3) as processing_time from Activity as p1 join Activity as p2 on ((p1.machine_id = p2.machine_id) and (p1.process_id = p2.process_id) and (p1.activity_type = 'start' and p2.activity_type = 'end')) group by machine_id