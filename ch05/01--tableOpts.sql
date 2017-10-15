####
#创建表测试
###

#创建公司数据库
CREATE DATABASE company;

#使用公司数据库
USE company;

#创建部门表
CREATE TABLE t_dept(
	deptno INT,
	dname VARCHAR(20),
	loc VARCHAR(40)
);

#使用DESCRIBE描述关键字查看创建的表
DESCRIBE t_dept;

#使用show展示创建表的语句
SHOW CREATE TABLE t_dept;

#删除表
DROP TABLE t_dept;

#检查表是否存在
DESC t_dept;


#修改表名字
ALTER TABLE t_dept
	RENAME TO tab_dept;

#修改表名字
ALTER TABLE tab_dept
	RENAME TO t_dept;

#最后位置增加字段
ALTER TABLE t_dept
	ADD descri VARCHAR(20);

#第一个位置增加字段
ALTER TABLE t_dept
	ADD id INT FIRST;

#指定字段后面添加字段
ALTER TABLE t_dept
	ADD addr VARCHAR(20) AFTER loc;

#删除字段
ALTER TABLE t_dept
	DROP addr;

#查看表描述
DESC t_dept;

#修改字段类型
ALTER TABLE t_dept
	MODIFY deptno VARCHAR(20);