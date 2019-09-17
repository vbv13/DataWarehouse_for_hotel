exec sp_MSforeachtable 'TRUNCATE TABLE?';		-- -wyczyœæ tym tabele w zrodlach, stagu itd. (na pocz¹tku)


insert into Rezerwacja values(1, 1, 2, 'grupowa', 1, '2019-06-27 23:15:32');
insert into klient values(1,'Cezary', 'Baryka', '2019-06-21');
insert into pracownik values(2, 'Jan', 'Nowak', '2019-06-21');


insert into Rezerwacja values(11, 11, 21,  '2019-06-27 23:15:32');
insert into Rezerwacja values(12, 12, 22,  '2019-06-27 23:15:32');

--S2
insert into klient values(10,'Cezary', 'Baryka', '2019-06-21');
insert into klient values(11,'CezaryCezary', 'Baryka', '2019-06-21');
insert into pracownik values(20, 'Jan', 'Nowak', '2019-06-21');
insert into pracownik values(21, 'Jan', 'Nowak', '2019-06-21');

--
insert into klient values(1,'Cezary', 'Baryka', '2019-06-21');
insert into Rezerwacja values(1, 1, 2,  '2019-06-27 23:15:32');


select * FROM source.dbo.rezerwacja;
select * from source2.dbo.Klient;
select * from source2.dbo.Pracownik;
select * from source.dbo.Klient;
select * from source.dbo.Pracownik;

exec InsertSource1;				-- stage
exec InsertSource2;

select * FROM stage.dbo.S1_rezerwacja;
select * FROM stage.dbo.S1_Klient;
select * FROM stage.dbo.S2_Klient;

exec InsertTemp;			-- temp

select * FROM temp.dbo.Klient_temp;		-- temp
select * from temp.dbo.Pracownik_temp;
select * from temp.dbo.rezerwacja_temp;

exec InsertTemp_stg_dimensions;			-- temp
select * FROM temp.dbo.Klient_stg;		
select * FROM temp.dbo.Klient_fail;

exec InsertTarget_dimensions;			
select * FROM target.dbo.Klient;
select * from target.dbo.t_key_Klient;
select * from target.dbo.t_key_Pracownik;
select * from target.dbo.Pracownik;

exec InsertTemp_stg;					--temp
select * from temp.dbo.Rezerwacja_stg;
select * from temp.dbo.Rezerwacja_fail;

exec InsertTarget;
select * from target.dbo.rezerwacja;
select * from target.dbo.t_key_rezerwacja;