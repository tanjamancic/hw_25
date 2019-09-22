create table Model (
	Id integer primary key autoincrement,
	Marka varchar(50),
	Model varchar(50),
	BrProdatih integer,
	BrNabavljenih integer,
	Profit integer
);

create table Kupac (
	Id integer primary key autoincrement,
	Ime varchar(50),
	Prezime varchar(50),
	BrLk integer,
	BrKupljenih integer
);

create table Dobavljac (
	Id integer primary key autoincrement,
	Naziv varchar(50),
	BrDobavljenih integer 
);

create table Automobil (
	Id integer primary key autoincrement,
	RegBr integer,
	IdM integer,
	foreign key (IdM) references Model(Id)
);

create table Kupovina (
	IdA integer,
	IdK integer,
	DatumVreme date,
	Cena integer,
	foreign key(IdA) references Automobil(Id),
	foreign key(IdK) references Kupac(Id)
);

create table Nabavka (
	IdA integer,
	DatumVreme date,
	IdD integer, 
	Cena integer,
	foreign key (IdA) references Automobil(Id),
	foreign key (IdD) references Dobavljac(Id)
);
