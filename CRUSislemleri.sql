-- CREATE   ( İNSERT İNTO )
-- READ
-- UPDATE
-- DELETE

--CREATE - INSERT INTO

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
	values ('MacBook Air M1',4),
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
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  