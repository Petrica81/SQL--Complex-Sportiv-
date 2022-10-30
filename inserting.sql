insert into sali
values(101,'Primar');

insert into sali
values(102,'Barry');

insert into sali
values(105,'Helios');

insert into sali
values(103,'Haron');

insert into sali
values(104,'Piton');

create sequence antrenorinr 
start with 10 
nocycle 
nocache;

insert into antrenori(id_antren,nume,prenume,salariu,data_angaj)
values(antrenorinr.nextval,'Lefter','Andrei',2100,to_date('10/05/2012','DD/MM/YYYY'));

insert into antrenori(id_antren,nume,prenume,salariu,data_angaj)
values(antrenorinr.nextval,'Titiriga','Tiberiu',1500,to_date('07/11/2015','DD/MM/YYYY'));

insert into antrenori(id_antren,nume,prenume,salariu,data_angaj)
values(antrenorinr.nextval,'Biciusca','Matei',1500,to_date('26/03/2016','DD/MM/YYYY'));

insert into antrenori(id_antren,nume,prenume,salariu,data_angaj)
values(antrenorinr.nextval,'Gobej','Adrian',3000,to_date('01/01/2001','DD/MM/YYYY'));

insert into antrenori(id_antren,nume,prenume,salariu,data_angaj)
values(antrenorinr.nextval,'Lefter','Sora',1000,to_date('14/07/2020','DD/MM/YYYY'));

insert into activitati(id_activ,nume_activ)
values(1,'Zumba');

insert into activitati(id_activ,nume_activ)
values(2,'Salsa');

insert into activitati(id_activ,nume_activ)
values(3,'Culturism');

insert into activitati(id_activ,nume_activ)
values(4,'Tenis');

insert into activitati(id_activ,nume_activ)
values(5,'Fitness');

insert into activitati(id_activ,nume_activ)
values(6,'Volei');

insert into activitati(id_activ,nume_activ)
values(7,'Box');

insert into coordonare(id_activ,id_antren)
values(1,14);

insert into coordonare(id_activ,id_antren)
values(1,13);

insert into coordonare(id_activ,id_antren)
values(2, 13);

insert into coordonare(id_activ,id_antren)
values(3,11);

insert into coordonare(id_activ,id_antren)
values(5,11);

insert into coordonare(id_activ,id_antren)
values(5,12);

insert into coordonare(id_activ,id_antren)
values(4,10);

insert into coordonare(id_activ,id_antren)
values(7,10);

insert into coordonare(id_activ,id_antren)
values(7,11);

insert into coordonare(id_activ,id_antren)
values(7,12);

insert into abonamente(valabilitate,pret)
values(1,50);

insert into abonamente(valabilitate,pret)
values(3,135);

insert into abonamente(valabilitate,pret)
values(6,250);

insert into abonamente(valabilitate,pret)
values(12,400);

insert into abonamente(valabilitate,pret)
values(2,97);

insert into programe(id_prog,id_activ,start_date,end_date,id_sala)
values(42,6,to_date('14/10/2005 10','DD/MM/YYYY HH24' ),to_date('14/10/2005 13','DD/MM/YYYY HH24' ), 101);

insert into programe(id_prog,id_activ,start_date,end_date,id_sala)
values(36, 1,to_date('14/10/2005 10','DD/MM/YYYY HH24' ),to_date('14/10/2005 13','DD/MM/YYYY HH24' ), 102);

insert into programe(id_prog,id_activ,start_date,end_date,id_sala)
values(37,3,to_date('14/10/2005 13','DD/MM/YYYY HH24' ),to_date('14/10/2005 15','DD/MM/YYYY HH24' ), 101);

insert into programe(id_prog,id_activ,start_date,end_date,id_sala)
values(45,7,to_date('14/10/2005 9','DD/MM/YYYY HH24' ),to_date('14/10/2005 10','DD/MM/YYYY HH24' ), 103);

insert into programe(id_prog,id_activ,start_date,end_date,id_sala)
values(51,4,to_date('21/03/2020 15','DD/MM/YYYY HH24' ),to_date('21/03/2020 17','DD/MM/YYYY HH24' ), 105);

insert into programe(id_prog,id_activ,start_date,end_date,id_sala)
values(52,5,to_date('17/02/2019 8','DD/MM/YYYY HH24' ),to_date('17/02/2019 10','DD/MM/YYYY HH24' ), 105);

insert into programe(id_prog,id_activ,start_date,end_date,id_sala)
values(53,2,to_date('17/02/2019 18','DD/MM/YYYY HH24' ),to_date('17/02/2019 19','DD/MM/YYYY HH24' ), 101);

insert into programe(id_prog,id_activ,start_date,end_date,id_sala)
values(55,7,to_date('23/05/2019 18','DD/MM/YYYY HH24' ),to_date('23/05/2019 20','DD/MM/YYYY HH24' ), 102);

insert into programe(id_prog,id_activ,start_date,end_date,id_sala)
values(54,2,to_date('17/01/2019 7','DD/MM/YYYY HH24' ),to_date('17/01/2019 10','DD/MM/YYYY HH24' ), 102);

insert into clienti(id_client, nume, prenume, email, valabilitate, data_cump)
values(1,'Corbeanu','Adela','corbeanuadela@gmail.com',1,to_date('12/04/2005','DD/MM/YYYY'));

insert into clienti(id_client, nume, prenume, email, valabilitate, data_cump)
values(2,'Tava','Andrei','tavaandrei@gmail.com',3,to_date('03/08/2012','DD/MM/YYYY'));

insert into clienti(id_client, nume, prenume, email, valabilitate, data_cump)
values(3,'Rosianu','Robert','rosianurobert@gmail.com',12,to_date('01/01/2019','DD/MM/YYYY'));

insert into clienti(id_client, nume, prenume, email, valabilitate, data_cump)
values(4,'Dina','Alexandru','dinaalexandru@gmail.com',1,to_date('15/09/2005','DD/MM/YYYY'));

insert into clienti(id_client, nume, prenume, email, valabilitate, data_cump)
values(5,'Tava','Alexandru','tavaalexandru@gmail.com',6,to_date('01/01/2019','DD/MM/YYYY'));

insert into clienti(id_client, nume, prenume, email, valabilitate, data_cump)
values(6,'Ancuta','Andrei','ancutaandrei@gmail.com',1,to_date('01/01/2019','DD/MM/YYYY'));

insert into clienti(id_client, nume, prenume, email, valabilitate, data_cump)
values(7,'Cubanito','Zvelter','cubanitozvelter@gmail.com',12,to_date('01/01/2005','DD/MM/YYYY'));

insert into clienti(id_client, nume, prenume, email, valabilitate, data_cump)
values(8,'Marco','Veloi',null, 12, to_date('06/08/2017','DD/MM/YYYY'));

insert into participare(id_client,id_prog)
values(7,36);

insert into participare(id_client,id_prog)
values(7,37);

insert into participare(id_client,id_prog)
values(7,42);

insert into participare(id_client,id_prog)
values(7,45);

insert into participare(id_client,id_prog)
values(3,52);

insert into participare(id_client,id_prog)
values(3,53);

insert into participare(id_client,id_prog)
values(5,52);

insert into participare(id_client,id_prog)
values(6,54);

insert into participare(id_client,id_prog)
values(3,54);

insert into participare(id_client,id_prog)
values(3,55);

commit;