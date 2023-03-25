--1.test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
--2.Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--3.Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
--4.Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

create database test ;

create table employee (
	id Serial Primary key,
	name varchar(50) not null,
	birthday date,
	email varchar(100)
) ;
--Update Control :
select * from employee order by id ;

insert into employee (name, birthday, email) values ('Astrid', '1914-01-17', 'apearn0@sphinn.com');
insert into employee (name, birthday, email) values ('Drona', '1901-09-21', 'dlinch1@princeton.edu');
insert into employee (name, birthday, email) values ('Beverie', '1985-12-05', 'baitken2@usgs.gov');
-- ... +47 row 

Update employee 
set 
	name = 'Ahmet',
	birthday = '2000-04-20',
	email = 'Ahmet@gmail.com'
where id=1 ;

Update employee 
set 
	name = 'Behçet',
	birthday = '2001-05-21',
	email = 'Behcet@hotmail.com'
where id=2 ;

Update employee 
set 
	name = 'Cevdet',
	birthday = '2002-06-22',
	email = 'Cevdet@yahoo.com'
where id=3 ;

Update employee 
set 
	name = 'Davut',
	birthday = '2003-07-23',
	email = 'Davut@hotmail.com'
where id=4 ;

Update employee 
set 
	name = 'Erhan',
	birthday = '2004-08-24',
	email = 'Erhan@gmail.com'
where id=5 ;

Delete from Employee 
where id In(6,7,8,9,10) ;


