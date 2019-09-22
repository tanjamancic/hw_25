delete from Nabavka
where IdA in (select Id from Automobil where Idm  in (select Id from Model where Model.Model = "X7" and Model.Marka = "BMW"));

delete from Automobil
where IdM in (select Id from Model where Model.Model = "X7" and Model.Marka = "BMW");

delete from Model
where Model.Model = "X7" and Model.Marka= "BMW";

delete from Nabavka
where IdA in (select Id from Automobil where Id not in (select IdA from Kupovina));

delete from Automobil
where Id not in (select IdA from Kupovina) 