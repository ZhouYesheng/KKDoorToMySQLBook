####
#全文索引
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

#创建表时使用全文索引
CREATE TABLE t_dept(
	deptno INT,
	dname VARCHAR(20),
	loc VARCHAR(40),
	FULLTEXT INDEX index_loc(loc)
);