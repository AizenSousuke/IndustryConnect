-- Create stored procedure
CREATE PROCEDURE SelectTable
AS
SELECT * FROM Students;

-- Call the procedure
EXEC SelectTable;