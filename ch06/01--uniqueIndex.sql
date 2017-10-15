####
#普通索引
###

#创建无索引部门表
CREATE TABLE t_dept(
	deptno INT,
	dname VARCHAR(20),
	loc VARCHAR(40)
);


#删除部门表
DROP TABLE t_dept;

#检查是否启用了索引
EXPLAIN
	SELECT * FROM t_dept WHERE deptno=1;

#创建唯一索引部门表
CREATE TABLE t_dept(
	deptno INT,
	dname VARCHAR(20),
	loc VARCHAR(40),
	UNIQUE INDEX index_deptno(deptno)
);


#在已经存在的表上创建唯一索引
CREATE UNIQUE INDEX index_dept
	ON t_dept(deptno);

#修改表时候创建唯一索引
ALTER TABLE t_dept
	ADD UNIQUE INDEX index_deptno(deptno);

