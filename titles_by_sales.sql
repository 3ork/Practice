SELECT
	t.title,
	s.books_sold * t.price AS dollars_made
FROM dbo.titles t
RIGHT JOIN	( ---used a right join because I dont want values that arent within ordered books
			SELECT	
				SUM(qty) as books_sold, ---sum of each book thats sold
				title_id 
			FROM dbo.sales
			GROUP BY title_id 
			) s
ON t.title_id = s.title_id 
GROUP BY t.title, s.books_sold, t.price ---need to add price and books_sold so I dont run into errors
ORDER BY dollars_made DESC 
