
NothWind sql






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
select id,ad as urunadi ,kdv, markaid from tblurun,
select 5+10 as toplam,




-------------------------------------------------------------
-------------------------------------------------------------
 
-- ORDER BY, 
----- ASC , DESC 

SELECT * From tblil order by ad    --- il adına göre A'dan Z'e sırala


select * from tblil order by ad desc  -- il adına göre Z'den A'ya sırala


SELECT * From tblil order by ad asc 

-- ASC , küçükten > büyüge sıralar 
-- 		A....Z sıralama
--  	0....9
-- Not:Eğer order by ek bir parametre almaz ise ASC şeklinde davranır.
-- DESC, Büyükden küçüge ,9....0   ,  Z.....A




select *from tblmusteri
insert into tblmusteri(ad,soyad) values
('Emin','bay'),('Sema','Can'),('Tuna','Tunay'),('Nazım','hik'),('Cemal','sür'),('necip','faz'),



insert into tblodeme(musteriid,nakitodemetutarı)values (1,18050),
(1,8050),(2,2250),(3,4901),(4,2350),
(1,7520),(2,1520),(3,4566),(4,7854),
(1,3301),(2,8950),(3,8550),(4,3549)


select id,ad,soyad from tblmusteri where id in (
select musteriid from tblodeme tblodeme order by musteriid
)

	--Tekrar eden kayıtları tek gösterim ile gösterimesi
	-- DISTINCT
select DISTINCT musteriid from tblodeme order by musteriid


-------------------------------------------------------------
-------------------------------------------------------------

-- GROUP BY

select *from tblodeme
select musteriid,SUM (nakitodemetutarı) as toplamodeme
from tblodeme
group by musteriid


-------------------------------------------------------------

--- Bir tabloda var olan yabancı anahtarlı değerlerin 
--- diger tablodan alınarak birleştirilmesi nasıl yapılır ??
--  JOIN , referens verilmiş iki tabloyu bu referans değerini baz alarak
-- birleştirme işlemi yapar.

--- birleştirme işleminde dikkat edilmesi gereken durumlar
--- 1- hangi tabloyu, hangi tabloya birleştirelim
--- soruya ya da soruna göre değişir.
	select * FROM tblodeme
	join tblmusteri ON tblodeme.musteriid =tblmusteri.id
	
	
---  * tüm tablodaki alanalrı getiriyor . Peki sadece istediğim
---  tablodan istedigim alanları çekmek istese id'im nasıl olurdu ?

	SELECT tblmusteri.id, tblmusteri.ad,tblmusteri.soyad,
	tblodeme.nakitodemetutarı
	from tblodeme
	join tblmusteri ON tblodeme.musteriid =tblmusteri.id
	
	--- Peki , tabloadları ve alan adları çok uzun olsa idi ve 
	--- bir birine yakın kelimeler karmaşıklık artsa idi nasıl 
	--- kodlayacaktık ???
	
	SELECT ms.id, ms.ad,ms.soyad,sum(od.nakitodemetutarı),count(*)
	from tblodeme as od
	join tblmusteri as ms ON od.musteriid =ms.id
	GROUP by ms.id 
	HAVING sum(od.nakitodemetutarı) >14000   --- where normal sorgularda 	
											 --- group by kullanımında
											 --- sadece having ile kısıtlama
											 --- yapılabilir. where === having
	order by sum(od.nakitodemetutarı)
	
	
	--- Ödeme tablosunda hangi müşteri kaç ödeme yaptı ve tutarı ne idi

select musteriid,count(*),SUM(nakitodemetutarı) from tblodeme GROUP by musteriid


-- VİEW , hazırlandıgınız soruları bir şablon halinde 
-- tutmak ve daha sonra kullanmak üzere oluşturulan görünümlerdir
-- view ler tablo gibi davranır. bir tablo üzerinde 
-- uyguladığınız tüm işlemleri view içinde yapabilirsiniz.


 create view vwtumurunler
 as
 select ur.id,ur.ad as urunAdi ,ur.fiyat,
 tblmarka.ad as markaAdi ,tblmodel.ad
 from tblurun as ur
 left join tblmodel on tblmodel.id=ur.modelid
 left join tblmarka on tblmarka.id=tblmodel.markaid

select *from vwtumurunler






 select ur.id,ur.ad,ur.fiyat,tblmarka.ad,tblmodel.ad
 from tblurun as ur
 inner  join tblmodel on tblmodel.id=ur.modelid
 left join tblmarka on tblmarka.id=tblmodel.markaid

-------------------------------------------------------------
-------------------------------------------------------------

	/* 1- Proje seçin
	   2- Tabloları ve ilişkilerini yazın
	   3- 8'den az olmasın , En az 4 ilişkili tablo olsun
	   4- SORUN OLUSTURUN
	  neden ? uygulamanız yapılmak istenen program isteklerine 
	  cevap verebiliyormu
	
	---->  ör:  Bu ay hangi müşteriler ödeme yapmadı ?
	---->
	*/















