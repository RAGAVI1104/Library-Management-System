-- Alice borrows Clean Code
INSERT INTO Borrow (MemberID, BookID, BorrowDate, ReturnDate)
VALUES (1, 3, CURDATE(), NULL);

-- Update quantity after borrow
UPDATE Books SET Quantity = Quantity - 1 WHERE BookID = 3;

-- Alice returns Clean Code
UPDATE Borrow SET ReturnDate = CURDATE() WHERE MemberID = 1 AND BookID = 3 AND ReturnDate IS NULL;

-- Update quantity after return
UPDATE Books SET Quantity = Quantity + 1 WHERE BookID = 3;
