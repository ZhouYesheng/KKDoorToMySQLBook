####
#普通索引
###


#创建部门表，并且以主键deptno建立索引
CREATE TABLE t_dept(
	deptno INT,
	dname VARCHAR(20),
	loc VARCHAR(40),
	INDEX index_deptno(deptno)
);



#检查是否启用了索引
EXPLAIN
	SELECT * FROM t_dept WHERE deptno=1;