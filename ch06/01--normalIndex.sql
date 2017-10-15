####
#普通索引
###
#删除部门表
DROP TABLE t_dept;

#检查是否启用了索引
EXPLAIN
	SELECT * FROM t_dept WHERE deptno=1;

#创建部门表，并且以主键deptno建立索引
CREATE TABLE t_dept(
	deptno INT,
	dname VARCHAR(20),
	loc VARCHAR(40),
	INDEX index_deptno(deptno)
);



#创建无索引的普通表
CREATE TABLE t_dept(
	deptno INT,
	dname VARCHAR(20),
	loc VARCHAR(40)
);

#在普通表上建立索引
CREATE INDEX index_deptno
	ON t_dept(deptno);