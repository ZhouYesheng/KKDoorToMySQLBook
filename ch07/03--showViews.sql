####
#查询视图
###

#查询表名和视图名
SHOW TABLES;


#查看表和视图的详细信息
SHOW TABLE STATUS FROM company;

#查看具名视图状态
SHOW TABLE STATUS FROM company LIKE 'view_selectprodcuts';

#显示视图定义信息
SHOW CREATE VIEW view_selectprodcuts;

#查看视图设计信息
DESC view_selectprodcuts;

#使用系统库information_schema.views查看具名视图
SELECT * FROM views WHERE table_name='view_selectprodcuts';