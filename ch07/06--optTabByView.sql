####
#通过视图操作表
###

#查询视图
SELECT * FROM view_selectproducts;

#通过视图插入新记录（仅支持单表视图）
INSERT INTO view_product(name,price) VALUES('pear4',12.3);

#查看表t_product
SELECT * FROM t_product;


#通过视图删除表记录
DELETE FROM view_product WHERE name='pear4';

#通过视图更新表记录
UPDATE view_product SET price=10 WHERE name='apple';