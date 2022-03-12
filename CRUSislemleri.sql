-- CREATE   ( İNSERT İNTO )
-- READ
-- UPDATE
-- DELETE

--									CREATE - INSERT INTO

--- Bir tabloya veri eklemek.
--  1- İlk olarak "insert into " kullanılır
--  2- devamında bir boşluk bırakarak tablo adı yazılır
--  3- parantez içinde tabloda içine ekleme yapılacak tüm alanlar virgül ile ayrılır,
--  4- bir boşluk bırakılarak "VALUES" parametresi yazılarak
-- parantez içine sıra ile tablo parantezinde bulunan alanlar
-- için değerler girilir.
-- DİKKAT!! values içine girdiğiniz değerler, kolon alanlarının 
-- değişken türüne uygun şekilde olmalıdır. 'Emin bay'
-- Örn;   sayısal değerler için -> tırnak olmadan sayı değeri giriniz 

	insert into tblmarka(ad) 
	values ('Samsung'),('Asus'),('HP'),('Apple')
	
	insert into tblmodel(ad,markaid)
	values 
		   ('Glaxy Phone',1),
		   ('MacBook Air M1',4),
		   ('MacBook Pro M1',4),
		   ('MacBook Pro Intel',4)

insert into tblurun(ad,alisfiyatti,fiyat,
						stokmiktari,uyarimiktari,markaid,modelid)

	values('Apple MacBook Air M1',20000,25000,60,2,3,1),
		  ('Apple MacBook Pro M1',29000,35000,66,2,3,2),
		  ('Apple MacBook Intel ',36000,38000,66,2,3,3)
	

	insert into tblurun(ad,alisfiyatti,fiyat,
						stokmiktari,uyarimiktari					

						)
	values('Telefon 128GB',10000,15000,57,3),
		  ('Telefon 256GB',19000,25000,66,2)
		  
		  
--   								UPDATE - GÜNCELLEME 


-- 1- İlk olarak UPDATE komutu girilir.
-- 2- bir boşluk bırakılarak tablo adı girilir.
-- 3- SET anahtar eklemesi eklenir.
-- Eklenerek atanmak istenen değer yazılır.
-- DİKKAT atanılacak değer alan adının tipine uygun şekilde yazılmalıdır

--  ÇOK ÖNEMLİ !!!! Degişririlmek istenilen ürün belirtilmelidir.
-- eğer değiştirme istediğiniz değeri primary key(id) değerini
-- girmez isteniz tüm katıtların güncellenmesine neden olursunuz.

-- WHERE anahtar değeri ile hangi kayıt'ın güncelleneceği belirtilir.

update tblurun set markaid=1, modelid=4 where id=2

update tblurun set markaid=1, modelid=4 where id<3



-- 										DELETE - Silmek

-- 1- Delete komutu eklenir bir boşluk bırakılarak from anahtarı eklenir
-- 2- verileri silmek istenilen tablo adı bir boşluk bırakılarak yazılır
-- 3- DİKKAT!!!!  silme işleminde silinencek bilginin primary key (id)
-- degerinin girilmiş olduğundan emin olunuz. aksi durumda tüm 
-- tablo datalarının silinmesine neden olursunuz.
-- Where anahtarı ile silmek istenilen kaydın koşulunu girersiniz.

delete from tblurun where id=1



--										 READ - OKUMAK


















































		  
		  
		  
		  
		  
		  
		  
		  
		  
		  