####
#部门表
###
CREATE TABLE t_dept(
	deptno INT PRIMARY KEY,
	dname VARCHAR(20),
	loc VARCHAR(40)
);

#简略版插入多条完整记录
INSERT INTO t_dept
	VALUES(1,'cjgong1','ShangeHai1'),
		(2,'cjgong2','ShangeHai2'),
		(3,'cjgong3','ShangeHai3'),
		(4,'cjgong4','ShangeHai4'),
		(5,'cjgong5','ShangeHai5');

#插入测试数据
INSERT INTO t_dept
	VALUES(10,'ACCOUNTING','NEW YORK'),
	(20,'RESEARCH','DALLAS'),
	(30,'SALES','CHICAGO'),
	(40,'OPERATIONS','BOSTON');

#查询全部
SELECT * FROM t_dept;

#删除
DELETE FROM t_dept;