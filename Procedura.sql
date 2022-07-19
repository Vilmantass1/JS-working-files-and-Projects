-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE MyFirstProcedure
	-- Add the parameters for the stored procedure here
	@Name nvarchar(50),
	@Surname nvarchar(50),
	@BirthDate nvarchar(50),
	@Gender nvarchar(50),
	@Lan nvarchar(50)
AS
BEGIN

Insert into Authors
value(@Name, @Surname, '1999.10.20', 'as',2)
)
	
END
GO

