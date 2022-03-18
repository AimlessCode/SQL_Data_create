

create table HemsireBilgi(
	id serial primary key,
	hemsirebolumid integer references HemsireBolum(id),
	HemsireKidemid integer references HemsireKidem(id),
	ad varchar(250),
	soyad varchar(255),
	hastalikbilgi varchar(250),
	shift_name VARCHAR (350),
    start_shift TIME ,
    end_shift TIME ,
	notes varchar(500)
)

/*
	  ('Sabah', '08:00:00', '12:30:00'),
      ('Gündüz', '13:00:00', '17:30:00'),
      ('Akşam', '18:00:00', '22:30:00')
	  ('Gece', '23:00:00', '07:30:00')	
	  
*/


-----------------------------------------------------

select * from HemsireBilgi order by id 

select * from HemsireBilgi where id=1  -- 1.no kişiyi bulmak

select * from HemsireBilgi where start_shift is null -- Mesaisi olmayan hemsireyi bulmak

select * from HemsireBilgi where shift_name LIKE '_%' -- İstenilen mesai olan hemsireyi bulmak
 
SELECT TO_CHAR(NOW() :: DATE, 'dd/mm/yyyy') as Bugun  -- Bu günü tarihini yazdırır

update HemsireBilgi set shift_name='Gündüz',
						start_shift ='13:00:00',
						end_shift ='17:30:00'
						where id in(2)

-----------------------------------------------------

/*
HemsireKidem bigint references HemsireKidem(id)
*/  --  !!!!!!!!! kullanmaka doğrumu ???



	insert into HemsireBilgi(hemsirebolumid,
							 HemsireKidemid,
							 ad,
							 soyad,
							 hastalikbilgi,
							 notes
							 ) values

(2,1,'Sema','CAN','Temiz','20 yaşında ' ),
(3,4,'Seda','CAN','Temiz','20 yaşında ' ),
(5,2,'Emin','BAYCAN','Temiz','23 yaşında ' ),
(7,5,'Tunahan','TUNAY','Temiz','22 yaşında ' )

select * from HemsireBilgi where id = 1

-----------------------------------------------------
create table HemsireBolum(
	
	id serial primary key,
	hemsireid integer references HemsireKidem(id),
	hemsirebolumad varchar(500)
	)
	
insert into HemsireBolum(id,hemsirebolumad) values
(1, 'yagunbakim' ),
(2, 'acilservis' ),
(3, 'cerahi' ),
(4, 'ruhsaligi' ),
(5, 'cocukbakim' ),
(6, 'kadinsagligi' ),
(7, 'halksagligi' )	

-----------------------------------------------------
create table HemsireKidem(
	id serial primary key,
	hemsirekidemad varchar(500)
)

insert into HemsireKidem(id,hemsirekidemad) values

(1, 'stajer' ),
(2, 'sozlesmeli' ),
(3, 'hemsire' ),
(4, 'ruhsaligi' ),
(5, 'kidemlihemsire' ),
(6, 'bashemsire' )
-----------------------------------------------------








