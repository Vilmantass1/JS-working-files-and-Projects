drop table if exists #test;
create table #test (
Id int not null primary key clustered identity(1, 1)
, SomeColumn varchar(255) not null
);



drop table if exists #error;
create table #error (
Id int not null primary key clustered
, SomeColumn varchar(255) not null
);



insert into
#test (SomeColumn)
values
('A1'), ('B1'), ('C1'),
('A2'), ('B2'), ('C2'),
('A3'), ('B3'), ('C3'),
('A4'), ('B4'), ('C4'),
('A5'), ('B5'), ('C5'),
('A6'), ('B6'), ('C6'),
('A7'), ('B7'), ('C7'),
('A8'), ('B8'), ('C8')





select * from #test;
select * from #error;



delete a
output
Deleted.Id, Deleted.SomeColumn
into
#error (Id, SomeColumn)
from
#test as a
inner join
#test as b
on
a.Id = b.Id
and (a.Id +2) % 3 <> 0;



select * from #test;
select * from #error;

--delete a
--output
--    Deleted.Id, Deleted.SomeColumn
--into
--    #error (Id, SomeColumn)
--from
--    #test as a
--inner join
--    #test as b
--    on
--        a.Id = b.Id
--        and (a.Id +2) % 3 <> 0;
--TEST - A       ERROR - B,C
--delete a
--output
--    Deleted.Id, Deleted.SomeColumn
--into
--    #error (Id, SomeColumn)
--from
--    #test as a
--inner join
--    #test as b
--    on
--        a.Id = b.Id
--        and (a.Id) % 3 = 0;
--TEST - A,B       ERROR - C
--delete a
--output
--    Deleted.Id, Deleted.SomeColumn
--into
--    #error (Id, SomeColumn)
--from
--    #test as a
--inner join
--    #test as b
--    on
--        a.Id = b.Id
--        and (a.Id+1) % 3 <> 0;
-- TEST B        ERROR A,C