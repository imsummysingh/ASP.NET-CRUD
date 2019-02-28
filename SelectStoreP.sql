--[dbo].SelectStoreP ''
CREATE PROCEDURE [dbo].SelectStoreP(
	@ID INT = null
)

AS
BEGIN
	SELECT  *
	FROM Test WHERE IsDeleted = 0 and ID = Case when @ID = '' THEN ID ELSE @ID END
END