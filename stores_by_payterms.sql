SELECT DISTINCT 
	stor_name,
	payterms,
	COUNT(payterms) AS times_used ---amo9unt of times the store used each of the payterms 
FROM dbo.stores st
JOIN dbo.sales sa
ON st.stor_id = sa.stor_id 
GROUP BY stor_name, payterms 
ORDER BY stor_name 