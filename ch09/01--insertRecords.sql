####
#插入记录
###
#创建loader表
CREATE TABLE t_loader(
	id INT,
	name VARCHAR(20),
	dname VARCHAR(20),
	loc VARCHAR(40)
);

#插入测试数据到表loader中
INSERT INTO t_loader(id,name,dname,loc)
	VALUES(1,'cjgong1','dept1','shangxi1'),
		(2,'cjgong2','dept2','shangxi2'),
		(3,'cjgong3','dept3','shangxi3'),
		(4,'cjgong4','dept4','shangxi4'),
		(5,'cjgong5','dept5','shangxi5');

#查询loader表
SELECT * FROM t_loader;

#查询部门表
SELECT * FROM t_dept;

#删除所有记录
DELETE FROM t_dept;

#插入完整记录
INSERT INTO t_dept(deptno,dname,loc) VALUES(3,'cjgong3','ShangeHai3');

#简略版插入完整记录
INSERT INTO t_dept VALUES(4,'cjgong4','ShangeHai4');

#插入部分记录
INSERT INTO t_dept(dname,loc) VALUES('cjgong5','ShangeHai5');

#插入多条完整记录
INSERT INTO t_dept(deptno,dname,loc)
	VALUES(1,'cjgong1','ShangeHai1'),
		(2,'cjgong2','ShangeHai2'),
		(3,'cjgong3','ShangeHai3'),
		(4,'cjgong4','ShangeHai4'),
		(5,'cjgong5','ShangeHai5');

#简略版插入多条完整记录
INSERT INTO t_dept
	VALUES(1,'cjgong1','ShangeHai1'),
		(2,'cjgong2','ShangeHai2'),
		(3,'cjgong3','ShangeHai3'),
		(4,'cjgong4','ShangeHai4'),
		(5,'cjgong5','ShangeHai5');

#插入多条部分记录
INSERT INTO t_dept(dname,loc)
	VALUES('cjgong1','ShangeHai1'),
		('cjgong2','ShangeHai2'),
		('cjgong3','ShangeHai3'),
		('cjgong4','ShangeHai4'),
		('cjgong5','ShangeHai5');


#插入从loader表中的查询结果到部门表dept
INSERT INTO t_dept(dname,loc)
	SELECT dname,loc FROM t_loader;