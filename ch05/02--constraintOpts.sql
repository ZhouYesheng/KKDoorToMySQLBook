####
#约束性操作
###

#创建非空字段
CREATE TABLE t_dept(
	deptno INT NOT NULL,
	dname VARCHAR(20),
	loc VARCHAR(40)
);


#描述表
DESC t_dept;

#创建默认字段-- DEFAULT
CREATE TABLE t_dept(
	deptno INT NOT NULL,
	dname VARCHAR(20) DEFAULT '秘书处',
	loc VARCHAR(40)
);