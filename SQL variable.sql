/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BooksID]
      ,[Title]
      ,[Genre]
      ,[Pages]
      ,[OriginalLanguage]
      ,[Authors]
  FROM [BookList].[dbo].[UzdraustosKnygos]


  Select * from [BookList].[dbo].[UzdraustosKnygos] 
  --Update [UzdraustosKnygos] set Pages=900
  where Pages > 800 and pages <=900

  Select * from Books
    Select * from [UzdraustosKnygos]

 -- UPDATE 
    uk
SET 
    uk.pages = b.pages
  
FROM 
    [UzdraustosKnygos] uk
    INNER JOIN Books b ON uk.BooksID=b.BooksID

	Declare @LineCounter INT

	Select * from [UzdraustosKnygos]
	where Pages >400
	
	SET @LineCounter=@@ROWCOUNT
	Print concat('Selected', ' ',@LineCounter, ' ', 'Rows' )


		Declare @LineCounter INT

	Select * from [UzdraustosKnygos]
	where Pages >700
	
	SET @LineCounter=@@ROWCOUNT
	IF @LineCounter >5
	Print concat('Selected', ' ',@LineCounter, ' ', 'Rows, which is more than 5' )
	else 
	Print concat('Selected', ' ',@LineCounter, ' ', 'Rows, which is less than 5' )


			Declare @LineCounter INT

	Select * from [UzdraustosKnygos]
	where Pages >700
	
	SET @LineCounter=@@ROWCOUNT
	IF @LineCounter >5
	begin
	Print concat('Selected', ' ',@LineCounter, ' ', 'Rows, which is more than 5' )
	Print ('Antra eilute test' )
	end
	else 
	begin
	Print concat('Selected', ' ',@LineCounter, ' ', 'Rows, which is less than 5' )
	Print ('Antra eilute test' )
	end