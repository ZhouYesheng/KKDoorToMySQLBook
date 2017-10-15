####
#sql创建视图
###

#创建水果表
CREATE TABLE t_product(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100),
	price INT
);

#查询全部水果记录
SELECT * FROM t_product;

#插入多条水果记录
INSERT INTO t_product(name,price) VALUES
	('apple',6.5),
	('banana',4.5),
	('orange',1.5),
	('pear',2.5);

#创建只查询非隐私字段的视图
CREATE VIEW view_selectprodcuts AS
	SELECT id,name FROM t_product;

#从公开视图上查询所需数据
SELECT * FROM view_selectprodcuts;