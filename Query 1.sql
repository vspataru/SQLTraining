--BEGIN TRANSACTION
--insert into shop_items(item_name,price,item_type)
--values('test',20,'clothe'),
--('test2',21,'clothe'),
--('test3',22,'clothe'),
--('test4',23,'clothe'),
--('test5',24,'clothe');

--insert into shop_items(item_name,price,item_type)
--values('testm',20,'magazine'),
--('testm2',21,'magazine'),
--('testm3',22,'magazine'),
--('testm4',23,'magazine'),
--('testm5',24,'magazine');

--insert into shop_items(item_name,price,item_type)
--values('testa',20,'accessory'),
--('testa2',21,'accessory'),
--('testa3',22,'accessory'),
--('testa4',23,'accessory'),
--('testa5',24,'accessory');

--insert into clothes(fabric,size,item_id)
--values('test1',22,65),
--('test2',23,65),
--('test3',24,65),
--('test4',25,65),
--('test5',26,65);

--insert into magazines(magazine_type, item_id)
--values('testm1',70),
--('testm2',70),
--('testm3',70),
--('testm4',70),
--('testm5',70);

--insert into accessories(color,item_id)
--values('testa1',75),
--('testa2',75),
--('testa3',75),
--('testa4',75),
--('testa5',75);


--UPDATE accessories
--SET color = 'negru' WHERE id=1;

--UPDATE clothes 
--SET size = 46 WHERE id=1;

--UPDATE magazines
--SET magazine_type = 'gaming' WHERE id=1;

--COMMIT TRANSACTION



--CREATE PROCEDURE get_all_items_procedure
--AS
--select shop_items.id,shop_items.item_name,shop_items.item_type, clothes.fabric,clothes.size, magazines.magazine_type, accessories.color from 
--shop_items
--full outer join clothes on clothes.item_id = shop_items.id
--full outer join accessories on accessories.item_id = shop_items.id
--full outer join magazines on magazines.item_id = shop_items.id;
--GO;


