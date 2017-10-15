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