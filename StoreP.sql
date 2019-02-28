
CREATE PROCEDURE dbo.StoreP
(
	--@action NVARCHAR (50) ,
	@ID				 INT,		
    @FirstName       NVARCHAR (50) ,
    @MiddleName      NVARCHAR (50) ,
    @LastName        NVARCHAR (50) ,
    @DOB             DATE          ,
    @Gender          NVARCHAR (50) ,
    @Nationality     NVARCHAR (50) ,
    @Email           NVARCHAR (50) ,
    @Mobile          NVARCHAR (50) ,
    @P1              NVARCHAR (50) ,
    @P2              NVARCHAR (50) ,
    @P3              NVARCHAR (50) ,
    @Password		 NVARCHAR (50) ,
    @ConfirmPassword NVARCHAR (50) ,
	@Action			 NVARCHAR(10)
	)
AS
BEGIN 
	SET NOCOUNT ON 
	
--if @action='INSERT'
--BEGIN
IF(@Action = 'Add')
BEGIN
	INSERT INTO dbo.Test
		(
    [FirstName]       ,
    [MiddleName]      ,
    [LastName]        ,
    [DOB]             ,
    [Gender]          ,
    [Nationality]     ,
    [Email]           ,
    [Mobile]          ,
    [P1]              ,
    [P2]              ,
    [P3]              ,
    [Password]        ,
    [ConfirmPassword] 
		)
		VALUES
			(
				@FirstName,
				@MiddleName,
				@LastName,
				@DOB,
				@Gender,
				@Nationality,
				@Email,
				@Mobile,
				@P1,
				@P2,
				@P3,
				@Password,
				@ConfirmPassword
			)
END
ELSE IF @Action='Edit'
BEGIN
	 UPDATE dbo.Test SET 
		FirstName=@FirstName,
		MiddleName=@MiddleName,
		LastName=@LastName,
		DOB=@DOB,
		Gender=@Gender,
		Nationality=@Nationality,
		Email=@Email,
		Mobile=@Mobile,
		P1=@P1,
		P2=@P2,
		P3=@P3
		WHERE ID = @ID
END

--else if @action='DELETE'
--BEGIN

--	DELETE from dbo.Test WHERE FirstName=@FirstName

--END

--else if @action='SELECT'
--BEGIN
	
--	SELECT * FROM dbo.TEST

--END

END