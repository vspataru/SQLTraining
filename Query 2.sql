--CREATE DATABASE mydb1;
--USE mydb1;

--CREATE TABLE shop_items(
--id int IDENTITY(1,1) PRIMARY KEY,
--item_name varchar(30) DEFAULT('item'),
--price int NOT NULL CHECK(price > 0) ,
--item_type varchar(30) CHECK(item_type = 'clothe' OR item_type = 'accessory' OR item_type = 'magazine'),
--);

--CREATE TABLE clothes(
--id int IDENTITY(1,1) PRIMARY KEY,
--fabric varchar(30),
--size int,
--item_id int,
--CONSTRAINT FK_clothes_items FOREIGN KEY(item_id)
--REFERENCES shop_items(id)
--);

--CREATE TABLE accessories(
--id INT IDENTITY(1,1) PRIMARY KEY,
--color VARCHAR(30),
--item_id int,
--CONSTRAINT FK_accessories_items FOREIGN KEY(item_id)
--REFERENCES shop_items(id)
--);

--CREATE TABLE magazines(
--id INT IDENTITY(1,1) PRIMARY KEY,
--magazine_type VARCHAR(30),
--item_id int,
--CONSTRAINT FK_magazines_items FOREIGN KEY(item_id)
--REFERENCES shop_items(id)
--);

--CREATE TABLE inventory(
--id INT IDENTITY(1,1) PRIMARY KEY,
--item_type VARCHAR(30),
--stock INT
--);

--CREATE TRIGGER clothes_insert_delete_trigger ON clothes
--FOR INSERT, DELETE
--AS
--BEGIN
--UPDATE inventory
--SET inventory.stock = (select count(*) from clothes)
--WHERE inventory.id=1;
--END

--CREATE TRIGGER accessories_insert_delete_trigger ON accessories
--FOR INSERT, DELETE
--AS
--BEGIN
--UPDATE inventory
--SET inventory.stock = (select count(*) from clothes)
--WHERE inventory.id=3;
--END

--CREATE TRIGGER magazines_insert_delete_trigger ON magazines
--FOR INSERT, DELETE
--AS
--BEGIN
--UPDATE inventory
--SET inventory.stock = (select count(*) from clothes)
--WHERE inventory.id=2;
--END

