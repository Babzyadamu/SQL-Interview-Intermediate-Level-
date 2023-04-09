--- Que 1: Update Customer Cell No to have +31- before the main Cell No's?

UPDATE Customer
SET CustomerCellNo = '+31-' + CustomerCellNo
WHERE CustomerCellNo IS NOT NULL;

-- OR
UPDATE Customer
SET CustomerCellNo = CONCAT('+31-', CustomerCellNo)
WHERE CustomerCellNo IS NOT NULL;

--- Que 2: Change the CourseName column to All Uppercase

UPDATE Courses
SET CourseName = UPPER(CourseName)
WHERE CourseName IS NOT NULL;


--- Que 3: Replace the CourseName null values in Sales table with the CourseName in the Courses Table

UPDATE SALES
SET SALES.CourseName = COURSES.CourseName
FROM SALES
INNER JOIN COURSES ON
SALES.[Course ID] = COURSES.[CourseID]
WHERE SALES.CourseName IS NULL;
--- Que 4: Replace the Sales_Amount null values in Sales table with total_revenue in the Courses Table

UPDATE SALES
SET SALES_Amount = (CoursePrice *SalesQtyOrdered) 

FROM SALES
INNER JOIN COURSES
ON
SALES.[Course ID] = COURSES.CourseID
WHERE Sales_Amount IS NULL;





SELECT * FROM SALES