# Write your MySQL query statement below
select r.contest_id,  round( count(r.user_id) *100  /(SELECT COUNT(*) FROM Users),2) as percentage
from Register r
join Users u
on r.user_id = u.user_id
group by r.contest_id
order by percentage desc , contest_id asc

/* no need for join:
SELECT
    r.contest_id,
    ROUND(
        COUNT(r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users),
        2
    ) AS percentage
FROM Register r
GROUP BY r.contest_id
ORDER BY percentage DESC, contest_id ASC; */


