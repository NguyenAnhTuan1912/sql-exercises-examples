-- Get products that their category is 'seafood'
WITH SeafoodCategory AS (
	SELECT CategoryID AS CateID, CategoryName AS CateName
	FROM Categories AS C
	WHERE C.CategoryName = 'Seafood'
)
SELECT *
FROM Products AS P
JOIN SeafoodCategory AS PC ON P.CategoryID = PC.CateID

-- Get categories
SELECT *
FROM Categories