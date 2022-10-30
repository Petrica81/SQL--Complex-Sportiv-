--12.
--Afisati numele salilor de lungime 6 care contine litera "i" si salariul antrenorilor, pentru salile 
--in care se desfasoara cel putin un program al carui
-- activitate este coordonata de un antrenor angajat de cel putin 10 luni,
--respectiv antrenorii acestia. Ordonati in functie de salariu.

select nume_sala, salariu
from sali s, activitati a, programe p, coordonare c, antrenori an
where s.id_sala = p.id_sala
    and p.id_activ = a.id_activ
    and a.id_activ = c.id_activ
    and c.id_antren = an.id_antren
    and length(nume_sala) = 6
    and lower(nume_sala) like '%i%'
    and months_between(start_date,data_angaj) > 10
    and start_date > data_angaj
order by 2;

--Afisati numele si prenumule antrenorului plus "salariu mic" pentru antrenorii cu salariul mai mic strict decat 1500,
-- "salariu mediu" pentru antrenorii cu salariul intre 1500 si 2500 sau
-- "salariu mare" pentru antrenorii cu salariul mai mare strict decat 2500
--pentru toti antrenorii care au "a" in luna din data angajarii.

select nume||' '||prenume as Nume ,
        case
        when salariu < 1500 then 'salariu mic'
        when salariu >= 1500 and salariu <= 2500 then 'salariu mediu'
        else 'salariu mare'
        end
from antrenori
where lower(to_char(data_angaj,'Month')) like '%a%';
    

--Afisati numele si prenumele clientilor care au un abonament folosit de cel putin 2 clienti activi.
-- Un client este activ daca participa la cel putin un program.

With abon as(select a.valabilitate, count(distinct c.id_client) as "nrclienti"
            from clienti c , abonamente a, participare p
            where c.valabilitate(+) = a.valabilitate
                and c.id_client = p.id_client
            group by a.valabilitate
            having count(distinct c.id_client) >= 2)
select nume||' '||prenume as Nume
from clienti c
where c.valabilitate in (select valabilitate
                            from abon);

--Afisati numele si prenumele antrenorilor care au acelasi prenume cu macar un client 
--activ care are abonamentul mai putin de 100 de lei.

select a2.nume||' '||a2.prenume as Nume
from antrenori a2
where a2.prenume in (select c.prenume
                from clienti c, abonamente a, participare p
                where c.valabilitate = a.valabilitate
                    and c.id_client = p.id_client
                    and a.pret <100
                    and c.prenume = a2.prenume);
                    
--Afisati numele,prenumele si emailul clientilor, respectiv "Nu are email" daca nu are email.
--Iar prenumele este afisat cu caps daca se numeste Alexandru, altfel este afisat full cu lower.


select nume||' '||DECODE(lower(prenume),'alexandru',upper(prenume),lower(prenume)) as Nume, NVL(email,'Nu are email') as Email
from clienti;


--13.
--Sa se mareasca cu 2000 salariul tuturor antrenorilor care coordoneaza Fitness.

update antrenori
set salariu = salariu+2000
where id_antren in (select id_antren
                    from coordonare c, activitati a
                    where a.id_activ = c.id_activ
                        and nume_activ like 'Fitness' );

--Cei care participa la programe desfasurate in sala
-- cu id-ul 102 sa le creasca valabilitatea la 12 luni, daca nu o au deja 12.

update clienti
set valabilitate = 12
where id_client in (select c.id_client
                    from clienti c, participare p, programe pro
                    where c.id_client =  p.id_client
                        and p.id_prog = pro.id_prog
                        and pro.id_sala = 102)
    and valabilitate != 12;

-- Sa se elimine toate abonamentele neutilizate.

delete from abonamente
where valabilitate = (select a.valabilitate
                    from clienti c , abonamente a
                    where c.valabilitate(+) = a.valabilitate
                    group by a.valabilitate
                    having count(distinct c.id_client) = 0);