/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BooksID]
      ,[Title]
      ,[Genre]
      ,[Pages]
      ,[OriginalLanguage]
      ,[Authors]
  FROM [BookList].[dbo].[Books]

  SELECT *
FROM Books b
INNER JOIN Authors a
ON b.Authors = a.AuthorsID;

  SELECT *
FROM Books b
right JOIN Authors a
ON b.Authors = a.AuthorsID;

  SELECT *
FROM Books b
left JOIN Authors a
ON b.Authors = a.AuthorsID;

  SELECT *
FROM Books b
FULL OUTER JOIN Authors a
ON b.Authors = a.AuthorsID;

SELECT Books.Authors, Authors.AuthorsID,
concat (Books.Authors, 'x', Authors.AuthorsID,'=', BooksID*Authors) as result
FROM Books
CROSS JOIN Authors;

Select b.Title, a.Name, a.Surname, l.Languages
FROM Books b
INNER JOIN BookTranslatedTo t ON b.BooksID = t.BookID
INNER JOIN Authors a ON b.Authors = a.AuthorsID
INNER JOIN Languages l ON t.LanguageID = l.LanguaguesID

where l.Languages = 'German'

  SELECT a.Name, a.Surname, COUNT (a.AuthorsID) as "kiek knygu parase autorius"
FROM Authors a
INNER JOIN Books b
ON b.Authors = a.AuthorsID
group by a.Name, a.Surname
--where a.AuthorsID = 4


  SELECT *
FROM Authors a
left JOIN Books b
ON b.Authors = a.AuthorsID
where b.booksID is null



 SELECT l.Languages, STRING_AGG(Name+' '+Surname, ', '), MIN(a.AuthorsID) as 'AuthorID Suma'
FROM Authors a
left JOIN Languages l on a.Mother_tongue=l.LanguaguesID
group by l.Languages



SELECT Name,  STRING_AGG(Name+' '+Surname, ', '), Count(b.BooksID) as 'BooksID Suma'
FROM Books b
left JOIN Authors a on AuthorsID=b.Authors
group by Name

select name, surname, concat(SUBSTRING(name, 1, 1), + '.' + SUBSTRING(surname, 1, 1) + '.') as 'Short Name'

from authors
group by Name, surname