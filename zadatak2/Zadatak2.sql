--Zadatak 1.
select *
from predmet

--Zadatak 2.
select *
from dosije
where dosije.mesto_rodjenja = "Beograd"

--Zadatak 3.
select distinct mesto_rodjenja
from dosije
where mesto_rodjenja is not null

--Zadatak 4.
select naziv
from predmet
where bodovi > 6

--Zadatak 5.
select sifra, naziv
from predmet
where bodovi BETWEEN 8 and 15

--Zadatak 6.
select  *
from ispit
where bodovi = 81 or bodovi = 76 or bodovi = 59
group by id_predmeta

--Zadatak 7.
select *
from ispit
where bodovi is not 81 and bodovi is not 76 and bodovi is not 59
group by id_predmeta

--Zadatak 8.
select predmet.naziv, 1500*bodovi as "Cena za samofin"
from predmet

--Zadatak 9.
select predmet.naziv, "Cena u dinarima" as "Cena u Dinarima", 1500*bodovi as "Cena za samofin"
from predmet

--Zadatak 10.
--a:
select *
from predmet
order by bodovi asc
--b:
select *
from predmet
order by bodovi desc
--c:
select *
from predmet
order by bodovi asc, naziv desc

--Zadatak 11.
select ime, prezime, datum_rodjenja
from dosije
where datum_rodjenja BETWEEN '1995-02-04' and '1995-10-10'

--Zadatak 12.
select ispitni_rok.oznaka_roka, count(distinct ispit.id_predmeta) as "Broj polozenih ispita", count(distinct ispit.indeks)
from ispitni_rok, ispit, dosije
where ispit.bodovi is not null and ispit.ocena > 5 and ispitni_rok.godina_roka = 2015  and dosije.indeks = ispit.indeks
GROUP BY ispitni_rok.oznaka_roka

--Zadatak 13.
select  dosije.ime,  dosije.prezime
from dosije, predmet,ispitni_rok, ispit
where ispit.id_predmeta = 1001 and ispit.godina_roka = 2015 and ispit.oznaka_roka = "jan" and ispit.ocena > 5 and ispit.indeks = dosije.indeks 
group by dosije.indeks

--Zadatak 14.
select ispit.oznaka_roka, avg(ispit.bodovi)
from ispit
where ispit.id_predmeta = 1021 and ispit.godina_roka = 2015 and ispit.oznaka_roka != "apr" and ispit.bodovi is not null
group by ispit.oznaka_roka

--Zadatak 15.
select count(distinct ispit.indeks)
from dosije, ispit
where ispit.indeks = dosije.indeks and ispit.ocena > 5  

--Zadatak 16.
select avg(ispit.bodovi)
from ispit
where ispit.indeks = 20130023 and ispit.bodovi is not null

--Zadatak 17.
select avg(ispit.ocena)
from ispit
where ispit.oznaka_roka = "jan"

--Zadatak 18.
select distinct predmet.naziv
from predmet, ispit
where predmet.id_predmeta = ispit.id_predmeta and predmet.bodovi = 6 and ispit.oznaka_roka = "jan" and ispit.godina_roka = 2015
