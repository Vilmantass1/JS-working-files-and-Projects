MERGE Books AS b -- i sita lentele ikels irasus
USING MetuKnygos AS mk
ON b.BooksID = mk.BooksID
WHEN MATCHED THEN
    UPDATE SET b.Title = mk.Title, b.Genre = mk.Genre, b.Pages = mk.Pages, b.OriginalLanguage = mk.OriginalLanguage, b.Authors = mk.Authors --Update kai abiejuose lentuose yra taspats irasas
	WHEN NOT MATCHED BY TARGET THEN
    INSERT (
           [Title]
           ,[Genre]
           ,[Pages]
           ,[OriginalLanguage]
           ,[Authors]) 
		   VALUES (
           [Title]
           ,[Genre]
           ,[Pages]
           ,[OriginalLanguage]
           ,[Authors]) -- Insert kai irasas yra Z lentoje bet ne X
	WHEN NOT MATCHED BY SOURCE THEN
    DELETE; -- DELETE kai irasas yra X lentoje bet ne Z

	select * from Books
	select * from UzdraustosKnygos
		select * from MetuKnygos

	UPDATE UzdraustosKnygos
SET Title = 'test5'
WHERE BooksID=13

DELETE FROM UzdraustosKnygos WHERE BooksID=14;

INSERT INTO [dbo].[UzdraustosKnygos]
           ([BooksID]
           ,[Title]
           ,[Genre]
           ,[Pages]
           ,[OriginalLanguage]
           ,[Authors])
VALUES (16, 'NaujaKnyga3', 'New3', 600,2,5 );

MERGE Xlenta AS X
USING Zlenta AS Z
ON x.ID = z.ID
WHEN MATCHED THEN
    UPDATE SET x.y = z.y, x.h = z.h .... --Update kai abiejuose lentuose yra taspats irasas
WHEN NOT MATCHED BY TARGET THEN
    INSERT (..X fields)
    VALUES (..Z fields Values) -- Insert kai irasas yra Z lentoje bet ne X
WHEN NOT MATCHED BY SOURCE THEN
    DELETE; -- DELETE kai irasas yra X lentoje bet ne Z


CREATE TABLE [Customer] (  id bigint NOT NULL,  name nvarchar(255) DEFAULT NULL,  PRIMARY KEY (id));DROP TABLE [Customer]; -- kol sitas nebus uzkuomentuotas kuriant ORDER lenta, bus error,-- nes negali sukurti order lentos kuri referencina (CUSTOMERI), kai pacios Customer lentos neraCREATE TABLE [Order] (  id bigint NOT NULL,  item_name nvarchar(255) DEFAULT NULL,  customer_id bigint DEFAULT NULL,  PRIMARY KEY (id),  CONSTRAINT [FK_Order_Customer] FOREIGN KEY(customer_id) REFERENCES [Customer]([id]));DROP TABLE [Order];INSERT INTO [Customer] VALUES (1, 'Mindaugas'), (2, 'Jonas'), (3, 'Petras');INSERT INTO [Order] VALUES (1, 'Towel', 2), (2, 'Shoes', 3), (3, 'Dress', NULL);SELECT * FROM [Customer];SELECT * FROM [Order];

