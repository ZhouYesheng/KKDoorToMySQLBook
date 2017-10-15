####
#修改视图
###
#查询视图
SELECT * FROM view_selectproducts;

#先删除旧视图，再重建同名视图
DROP VIEW view_selectproducts;
CREATE VIEW view_selectproducts AS
	SELECT name FROM t_product;

#直接创建或替换旧的视图
CREATE OR REPLACE VIEW view_selectproducts AS
	SELECT name FROM t_product;