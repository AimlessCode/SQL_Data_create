-- READ işlemleri
-- SELECT kullanımı ve Paramtreleri
-- 1- SELECT seçme anahtarı yazılır
-- 2- seçim sonucunda hangi dataların alınacağını belirtmek için
-- tabloya ait alanların adı ya da tüm dataları çekmek için *
-- karakteri kullanılır
-- Hangi tablonun kullanılacağı belirtmek adına önce FROM anahtarı
-- kelimesi bir boşlık bırakılarak eklenir
-- 5- ardından bir boşluk bırakılarak tablonun adı yazılır

select * from tblurun

select id,ad,fiyat from tblurun

-- WHERE anahtar kelimesi ile yapılan kısıtlamalar


select * from tblurun where id=2  
select * from tblurun where id>=2
select * from tblurun where id!=2

-- WHERE AND.OR Kullanımı
select * from tblurun where id=1 or id=4 --İD'si 1 ve 4'e eşit olan kayıtları göster 

select * from tblurun where id>1 and id<4 


-- Stoğu azalan ürünleri göster, stok kriterim 60 adet olsun

select *from tblurun where stokmiktari <= 60

select id,ad,stokmiktari from tblurun where stokmiktari <= 60




--  		LIMIT, 

-- tabloda belli bir sayıda kayır çekmek için kullanırız
select * from tblilce  -- Tablo bulunan tüm kayıtları görüntüler
select * from tblilce limit 10 -- ilk 4 kaydı gösterir



					-- IN ,
---  
select *from tblilce where id in(3,5,7,8,10,54)



					--  BETWEEN	
					
-- Belli degerler arasındaki İd vb. çagırmak için kullanılır
select *from tblil where id between 10 and 20




					-- IS NULL , IS NOT NULL

select * from tblurun 

select id,ad,kdv from tblurun

update tblurun set kdv=18 where id in (1,4),
select id ,ad ,kdv from tblurun where kdv is null

select id ,ad ,kdv from tblurun where kdv is not null



--  LİKE , ILIKE

-- % YÜZDE İŞATERİ
--  _ alt tire işareti


select * from tblilce where ad like 'A%'  -- A İle başlayan devamında uzunlugu içerigi fark etmeyen kayıtlar


select * from tblilce where ad like '%ANKA%' 


select * from tblilce where ad like '__VA%'  -- ilk iki karakter sonra 'VA' gelenleri seçer

select * from tblilce where ad like '__A____%'




select * from tblilce where ad ilike '%ard%' -- keys sensitive olmadan 
-- ilike küçük ve büyük karakter için kulanılıyor



-------------------------------------------------------------
-------------------------------------------------------------

--  SELECT kendisine verilen bilgiyi tablo olarak gösterme eğilimindedir


select 5+10

select 'Ahmet ' 

select NOW()



--		 AS > Alias > takma ad 

--           ad'ı urunadi yapa biliriz
select id,ad as urunadi ,kdv, markaid from tblurun
select 5+10 as toplam










