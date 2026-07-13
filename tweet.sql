WITH cte AS
(SELECT  user_id,COUNT(tweet_id)AS num
FROM tweets
WHERE EXTRACT(YEAR FROM tweet_date) = '2022'
GROUP BY user_id)

SELECT num AS tweet_bucket,COUNT(user_id)AS user_num
FROM cte
GROUP BY num;
