####
#多列索引
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


#创建表的时候使用多列索引
CREATE TABLE t_dept(
	deptno INT,
	dname VARCHAR(20),
	loc VARCHAR(40),
	INDEX index_dname_loc(dname,loc)
);

#在已有表上建立多列索引
CREATE index index_dname_loc
	ON t_dept(dname,loc);

#修改表时建立多列索引
ALTER TABLE t_dept
	ADD INDEX index_dname_loc(dname,loc);
