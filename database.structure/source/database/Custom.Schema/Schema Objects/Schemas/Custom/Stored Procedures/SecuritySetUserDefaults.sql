CREATE PROCEDURE [Custom].[SecuritySetUserDefaults]
	@Iduser		INT
AS
BEGIN
       DECLARE @idGroup INT 

       SELECT @idGroup = idGroup 
	   FROM [Security].[Group] 
	   WHERE Code = 'Operadores'

       INSERT INTO [Security].[UserGroup] ( idUser , idGroup ) 
	   VALUES (@idUser , @idGroup )
END
