create database Cinema;
use Cinema;

create table Films(
Id int primary key identity,
Name nvarchar(50),
ReleaseDate date,
Raiting float check (Raiting <= 10)
)

create table Genres(
Id int primary key identity,
Name nvarchar(50),
)

create table Actors (
Id int primary key identity,
Name nvarchar(50),
Surname nvarchar(50),
Age int
)


create table FilmToActors (
Id int primary key identity,
FilmId int references Films (Id),
ActorId int references Actors (Id)
)


create table FilmToGenres (
Id int primary key identity,
FilmId int references Films (Id),
GenreId int references Genres (Id)
)


insert into Films values ('GetOut' , '2018-01-01', 10), ('Blood Diamond' , '2008', 9.5)
insert into Genres values ('Horror'), ( 'Adventure')
insert into Actors values ('Daniel ' , 'Kaluuya', 31), ('Di Capri' , 'Leonardo' , 29)
insert into FilmToActors values (1,1) ,(2,2)
insert into FilmToGenres values (2,1) ,(1,2)


Select * From Actors
Select * From Films
Select * From Genres


select a.name, count(*)
from FilmToActors as fa
join films as f
on f.Id =fa.FilmId
join Actors as a 
on a.Id = fa.ActorId
group by a.Id, a.name





