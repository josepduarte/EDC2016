Create procedure getMySales @au_lname VARCHAR(40), @au_fname VARCHAR(20)
AS

Select title, ord_num, stor_id,ord_date,qty,payterms 
from (Select title, authors_title.title_id from (Select title_id from (authors JOIN titleauthor ON authors.au_id=titleauthor.au_id)
																where au_fname=@au_fname AND au_lname=@au_lname) AS authors_title 
	 JOIN titles ON authors_title.title_id=titles.title_id) AS TEMP
	 JOIN sales ON TEMP.title_id=sales.title_id

GO
