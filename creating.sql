create table sali(
    id_sala number(3,0) primary key,
    nume_sala varchar(20) not null
    );
    
create table antrenori(
    id_antren number(3,0) constraint antren_key primary key,
    nume varchar2(10) constraint null_num_ant not null,
    prenume varchar2(10) constraint null_pren_ant not null,
    salariu number(8,2) not null,
    data_angaj date default sysdate not null,
    constraint uniq_num_pren_ant Unique(nume,prenume)
    );

create table activitati(
    id_activ number(3,0) primary key,
    nume_activ varchar(20) not null
    );
    
create table coordonare(
    id_activ number(3,0) references activitati(id_activ) on delete cascade,
    id_antren number(3,0) references antrenori(id_antren) on delete cascade,
    constraint pk_coord primary key(id_activ,id_antren)
    );
    
create table abonamente(
    valabilitate number(3,0) primary key,
    pret number(5,0) not null
    );

create table clienti(
    id_client number(3,0) primary key,
    nume varchar2(10) constraint null_num_cl not null,
    prenume varchar2(10) constraint null_pren_cl not null,
    email varchar(30) constraint ver_email check( email like '%_@gmail.com'),
    valabilitate number(3,0) references abonamente(valabilitate) on delete cascade,
    data_cump date default sysdate not null,
    constraint uniq_num_pren_cl Unique(nume,prenume)
    );

create table programe(
    id_prog number(3,0) primary key,
    id_activ number(3,0) references activitati(id_activ) on delete cascade,
    start_date date,
    end_date date,
    id_sala number(3,0) references sali(id_sala)on delete cascade,
    constraint uniq_prog Unique(start_date,id_sala),
    constraint not_end_first check(to_char(start_date,'DD/MM/YYYY HH24')<to_char(end_date,'DD/MM/YYYY HH24'))
    );
    
create table participare(
    id_client number(3,0) references clienti(id_client) on delete cascade,
    id_prog number(3,0) references programe(id_prog) on delete cascade,
    constraint pk_part primary key(id_client,id_prog)
    );