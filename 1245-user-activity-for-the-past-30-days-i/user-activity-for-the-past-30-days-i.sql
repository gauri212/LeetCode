# Write your MySQL query statement below
/*
select distinct activity_date as day, count(distinct user_id) as active_users
from Activity
where activity_date between 2019-06-28 and 2019-07-27
group by day 

select distinct activity_date as day, count(distinct user_id) as active_users
from activity
where datediff('2019-07-27', activity_date) < 30 and activity_date <= '2019-07-27'
group by 1;
*/
select
count(distinct user_id) as active_users,
activity_date as day
from Activity
where activity_date <= '2019-07-27' AND activity_date > '2019-06-27'

group by activity_date