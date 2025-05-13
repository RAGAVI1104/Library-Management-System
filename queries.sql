-- List all available books
SELECT * FROM Books WHERE Quantity > 0;

-- List borrowed books with member names
SELECT B.Title, M.Name, R.BorrowDate, R.ReturnDate
FROM Borrow R
JOIN Members M ON R.MemberID = M.MemberID
JOIN Books B ON R.BookID = B.BookID;

-- Count books borrowed by each member
SELECT M.Name, COUNT(*) AS TotalBorrowed
FROM Borrow R
JOIN Members M ON R.MemberID = M.MemberID
GROUP BY M.Name;
