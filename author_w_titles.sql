
SELECT
	a.au_id AS author_id,
	a.au_fname AS first_name,
	a.au_lname AS last_name,
	ats.title_id,
	b.title
FROM dbo.authors a
LEFT JOIN dbo.titleauthor ats
ON ats.au_id = a.au_id ---joining on primary key
JOIN dbo.titles b
ON ats.title_id = b.title_id ---joining to the other title table to get titles from the books
