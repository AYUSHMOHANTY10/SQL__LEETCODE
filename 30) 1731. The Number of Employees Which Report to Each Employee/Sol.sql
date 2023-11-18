SELECT
e.employee_id
,e.name
,count(e2.reports_to) as reports_count
,ROUND(AVG(e2.age*1.0),0) as average_age

FROM employees e INNER JOIN
employees e2 ON e.employee_id=e2.reports_to

WHERE e2.reports_to IS NOT NULL

GROUP BY
e.employee_id
order by employee_id;
