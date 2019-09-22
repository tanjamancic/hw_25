insert into Model (Marka, Model, BrProdatih, BrNabavljenih, Profit)
values ("BMW", "X6", 10, 20, 10000)
		("BMW", "X7", 5, 12, 14000)
		("Audi", "A8", 4, 10, 20000)
		("Audi", "A4", 6, 15, 15000)
		("Lada", "Niva", 20, 50, 10000)
		("Yugo", "Coral 45", 50, 100, 12000);

insert into Kupac (Ime, Prezime, BrLk , BrKupljenih)
values ("Zoran", "Milicevic", 12345678, 2)
		("Cvijan", "Peranovic", 12345678, 1)
		("Ivana", "Stepanovic", 12345678, 1)
		("Dusan", "Bobicic", 12345678, 1);

insert into Dobavljac (Naziv, BrDobavljenih)
values ("YugoMotors", 30)
		("SerbiaCarImport", 20)
		("BelgradeImport", 10);

insert into Automobil (RegBr, IdM)
values (123, 1), (456, 1),
		(123, 2), (789, 2),
		(123, 3), (789, 3), 
		(123, 4), (789, 4), 
		(123, 5), (789, 5), 
		(123, 6), (789, 6);

insert into Kupovina (IdA, IdK, DatumVreme, Cena)
values (8, 1, 2018-06-23, 40000),
		(6, 1, 2018-04-14, 70000),
		(2, 3, 2017-06-15, 25000),
		(12, 2, 2015-02-12, 300),
		(10, 4, 2016-03-13, 8000);
		
insert into Nabavka (IdA, DatumVreme, IdD, Cena)
values (5, "2010-01-01", 3, 30000),
		(6, "2010-01-01", 3, 30000),
		(7, "2010-01-01", 3, 30000),
		(8, "2010-01-01", 3, 30000),
		(9, "2000-02-01", 1, 4000),
		(10, "2000-02-01", 1, 4000),
		(11, "2000-02-01", 1, 4000),
		(12, "2000-02-01", 1, 4000),
		(1, "2013-01-01", 2, 20000),
		(2, "2013-01-01", 2, 20000),
		(3, "2013-01-01", 2, 20000),
		(4, "2013-01-01", 2, 20000);
		
		