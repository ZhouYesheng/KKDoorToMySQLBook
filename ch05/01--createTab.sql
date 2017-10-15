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