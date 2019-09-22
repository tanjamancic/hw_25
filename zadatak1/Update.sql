update Kupovina
set Cena = 25000
where IdK in (select Id from Kupac where Ime = "Zoran") and IdA in (select Id from Automobil where IdM in (select Id from Model where Model.Marka = "Audi" and Model.Model = "A4"));

update Nabavka
set Cena = Cena * 1.10
where IdA in (select Id from Automobil where IdM in (select Id from Model where Marka = "Audi" and Model = "A8" or Model = "A4"))