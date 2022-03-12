USE Child_Library;

SELECT *
FROM MEMBERS
WHERE Registration_Date < '2016-01-01';


SELECT b.Book_Title, a.FisrtName AS AuthorFN, a.LastName AS AuthorLN, p.Pub_Name
FROM BOOK b JOIN AUTHOR a ON b.Author_ID = a.Author_ID
			JOIN PUBLISHER p ON a.Author_ID = p.Author_ID
            JOIN BOOK_Status bs ON b.Sta_ID = bs.Sta_ID
WHERE bs.Sta_Type = "NOT Available";


SELECT DISTINCT b.Book_Title, ci.Checkin_Date
FROM BOOK b JOIN CHECKIN ci ON b.Book_ID = ci.Book_ID
WHERE ci.Checkin_Date = ci.Return_Date
ORDER BY ci.Checkin_Date;


SELECT s.FirstName, s.LastName
FROM STAFF s JOIN CHECKOUT co ON s.Staff_ID = co.Staff_ID
WHERE MONTH(co.Checkout_Date) = 8 AND YEAR(CO.Checkout_Date) = 2017
ORDER BY s.FirstName;

SELECT DISTINCT b.Book_Title
FROM BOOK b JOIN CATEGORY c ON b.Category_ID = c.Category_ID
WHERE c.Category_Type = 'comedy';





