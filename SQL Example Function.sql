-- This function returns a function named func that takes
-- in the parameter id which can be a varchar(50)
-- and returns a table which selects the parameter
-- id from IndustryConnectTable
CREATE FUNCTION func(@id varchar(50))
	RETURNS TABLE
AS
	RETURN SELECT id FROM dbo.IndustryConnectTable ict

-- This will return all columns for the function that returns an id column
SELECT * FROM func('id')