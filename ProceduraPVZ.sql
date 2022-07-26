USE [BookList]
GO
/****** Object:  StoredProcedure [dbo].[AddAuthorBook]    Script Date: 09/04/2022 09:47:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[AddAuthorBook]
	-- Add the parameters for the stored procedure here
	-- Sukurs duomenis kokius ivesim. @@Identity pasiims paskutini sugeneruota ID is autoriaus table
	@Name nvarchar(50),
	@Surname nvarchar(50),
	@BirthDate DateTime,
	@Title nvarchar(150),
	@Gender nvarchar(50),
	@Pages INT
AS
BEGIN

INSERT INTO [dbo].[Authors]
           ([Name]
           ,[Surname]
           ,[Birth_date]
           ,[Gender]
           ,[Mother_tongue])
     VALUES
           (@Name
           ,@Surname
           ,@BirthDate
           ,Case when RIGHT (@Name,1)= 's' then
		   'vyras'
		   else
		   'moteris'
		   end, 
		   1)

    
		   INSERT INTO [dbo].[Books]
           ([Title]
           ,[Genre]
           ,[Pages]
           ,[OriginalLanguage]
           ,[Authors])
     VALUES
           (@Title
           ,@Gender
           ,@Pages
           ,1
           ,@@IDENTITY)

END