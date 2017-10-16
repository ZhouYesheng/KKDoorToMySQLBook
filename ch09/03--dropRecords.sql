####
#删除记录
###
#创建无索引部门表
CREATE TABLE t_dept(
	deptno INT,
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

#查询部门表
SELECT * FROM t_dept;

#删除特定记录
DELETE FROM t_dept WHERE dname='cjgong1';

#无条件删除所有记录
DELETE FROM t_dept;