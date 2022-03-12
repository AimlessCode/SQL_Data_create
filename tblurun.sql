------ ÜRÜN TABLOLARI -----
	create table tblmarka(
		id bigserial primary key,
		ad varchar(250), 
		logo varchar(255),
		adres varchar(500),
		notes varchar(255)
	
	)
	
	create table tblmodel(
		id serial primary key,
		markaid integer references tblmarka(id),
		ad varchar(255),
		aciklama varchar(500)
	)
	
	create table tblkatagori(
		id serial primary key,
		ad varchar(255),
		parentid integer references tblkatagori(id)
		
	)
	
	create table tblurun(
		id bigserial primary key,
		ad varchar(255),
		markaid integer references tblmarka(id),
		modelid integer references tblmodel(id),
		barkod varchar(50),
		fiyat double precision,
		alisfiyatti double precision,
		kdv integer,
		birim varchar(25), -- adet , litre ,kilo vs.
		stokmiktari integer,
		uyarimiktari integer, --beli stok altında uyarı vericek
		aciklama varchar(500),
		katagoriid integer references tblkatagori(id)
	)
	
	----------- SATIŞ -----------
	create table tblkasa(
	id serial primary key,
		ad varchar(50), -- Nakit , A Bankası , B Bankarsı
		toplam double precision
		
	)
	create table tblsatis(
		id bigserial primary key,
		satistarihi bigint,
		islemtarihi bigint,
		musteriid bigint references tblmusteri(id),
		toplamtutar double precision,
		kartodenen double precision,
		nakitodenen double precision,
		kalan double precision,
		odemeyontemi int, -- 1 nakit,
						  -- 2 kart
		kasaid integer references tblkasa(id)	
	)
	
	create table tblsatisdetay(
		id bigserial primary key,
		satisid bigint references tblsatis(id),
		urunid bigint references tblurun(id),
		miktar integer,
		iskonto integer,
		iskontolufiyat double precision,
		satisfiyat double precision,
		alisfiyati double precision,
		toplamtutar double precision
		
	
	)
	
	create table tblodeme(
		id bigserial primary key,
		musteriid bigint references tblmusteri(id),
		nakitodemetutarı double precision,
		kartodemetutarı double precision,
		odemetarihi bigint,
		kasaid integer,
		aciklama varchar(200)
	)
	
	create table tblmusteriborc(
	 id bigserial primary key,
		musteriid bigint references tblmusteri (id),
		borc double precision
		
	
	)
	
	
	
	
	
	
	
	
	
	
	
	
