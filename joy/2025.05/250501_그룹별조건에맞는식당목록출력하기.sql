SELECT P.MEMBER_NAME, R.REVIEW_TEXT, LEFT (R.REVIEW_DATE, 10) AS REVIEW_DATE 
FROM MEMBER_PROFILE P
JOIN REST_REVIEW R
ON P.MEMBER_ID = R.MEMBER_ID
WHERE P.MEMBER_ID = (
SELECT MEMBER_ID
FROM REST_REVIEW
GROUP BY MEMBER_ID
ORDER BY COUNT(*) DESC
LIMIT 1)
ORDER BY REVIEW_DATE, R.REVIEW_TEXT;