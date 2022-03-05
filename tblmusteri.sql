-- Tablo oluşturma

---- Creat table ->

create table tlbmusteri(
	
	id serial primary key, --identity, serial otomatik
							-- numaralandırmak için kulanılır
	
	ad varchar(100),
	soyad varchar (100),
	adres varchar (500),
	telefon varchar (15),
	tckimlik varchar (11),
	cinsiyet integer , -- 0 belirtmek istemiyor
					   -- 1 kadın
					   -- 2 erkek
	createdate bigint , -- int -> int , long ->bigint
	updatedate bigint,  -- bu iki alan oluşturulma ve değiştirilme
						-- zamanlarını belirtmek için kullanılır.
						
	isactive int 	-- 0, pasif yeni kayıt
					-- 1, aftif kayıt
					-- 2, silinmiş kayıt
	)
	
	create table tblmarka(
	id serial primary key,
		ad varchar(150)
	
	)
	create table tblmodel(
	id serial primary key,
		ad varchar(150),
		markaid int references tblmarka(id) -- başka bir tabloya
					  --referans vermek için kullanılır. özel olarak 
					  --adı "foreignkey"dir.
	
	)
	
	
	
	create table tblurun(
	
	id serial primary key,
		ad varchar(150),
		barkod varchar(100),
		fiyat double precision,
		stok int ,
		kdv int ,
		resim varchar(255),
		aciklama varchar (500),
		isactive int default 1 -- 0 pasif kayıt
							  -- 1 aktif kayıt
							  -- 2 silinmiş kayıt
	
	)
	
	
	
	
	
	