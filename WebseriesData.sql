-- Top 25 webseries dataset project

create database webseries_db;
use webseries_db;
create table shows(show_id int primary key, title varchar(30),genre varchar(20),imdb_rating decimal(2,1), episodes int,release_year int,platform_id int);
insert into shows values
(101,'Breaking Bad','Crime Drama',9.5,62,2008,501),
(102,'Planet Earth II','Documentary',9.5,6,2016,502),
(103,'Band of Brothers','Drama',9.4,10,2001,503),
(104,'Chernobyl','Historical Drama',9.3,5,2019,503),
(105,'The Wire','Crime Drama',9.3,60,2002,503),
(106,'Blue Planet II','Documentary',9.3,7,2017,502),
(107,'Game of Thrones','Fantasy',9.2,73,2011,503),
(108,'The Sopranos','Crime Drama',9.2,86,1999,503),
(109,'Rick and Morty','Animation',9.1,61,2013,506),
(110,'Sherlock','Detective-Fiction',9.1,13,2010,504),
(111,'Better Call Saul','Crime Drama',9,63,2015,501),
(112,'The Office (US)','Comedy',9,201,2005,508),
(113,'Fargo','Crime Drama',8.9,41,2014,505),
(114,'Friends','Comedy',8.9,236,1994,501),
(115,'Narcos','Crime Drama',8.8,30,2015,501),
(116,'The Last of Us','Action',8.8,9,2023,503),
(117,'Peaky Blinders','Crime Drama',8.8,36,2013,501),
(118,'The Boys','Action',8.7,32,2019,504),
(119,'Dark','Science-Fiction',8.7,26,2017,501),
(120,'The Mandalorian','Action',8.7,24,2019,507),
(121,'Stranger Things','Fantasy',8.7,42,2016,501),
(122,'The Crown','Historical Drama',8.6,60,2016,501),
(123,'Mindhunter','Phsycological Crime',8.6,19,2017,501),
(124,'The Haunting of Hill House','Supernatural Horror',8.6,10,2018,501),
(125,'House of the Dragon','Fantasy Drama',8.5,10,2022,503);
select * from shows;

create table platform(platform_id int primary key, platform varchar(25));
insert into platform values
(501,'Netflix'),
(502,'BBC iPlayer'),
(503,'HBO Max'),
(504,'Prime Video'),
(505,'Hulu'),
(506,'Netflix/Hulu'),
(507,'Disney+'),
(508,'Peacock');
select * from platform;

-- Q1. Which are the documentary serieses in the dataset?
select * from shows where genre='Documentary';

-- Q2. How many shows were released in 2016?
select count(*) as 'No.of shows released in 2016' from shows where release_year=2016;

-- Q3.Which series has the highest IMDb rating ?
select title,imdb_rating from shows where imdb_rating=(select max(imdb_rating) from shows);

-- Q4.Which web series has the highest no. of episodes?
select title,episodes from shows where episodes=(select max(episodes) from shows);

-- Q5.Fetch the details of all shows streamed on Netflix?
select title,platform from shows S inner join platform P on S.platform_id=P.platform_id where platform='Netflix';


























