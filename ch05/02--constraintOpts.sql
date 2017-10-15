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

#创建匿名唯一约束UK
CREATE TABLE t_dept(
	id INT UNIQUE,
	deptno INT NOT NULL,
	dname VARCHAR(20) DEFAULT '秘书处',
	loc VARCHAR(40)
);

#创建有名唯一性约束
CREATE TABLE t_dept(
	id INT,
	deptno INT NOT NULL,
	dname VARCHAR(20) DEFAULT '秘书处',
	loc VARCHAR(40),
	CONSTRAINT uk_id UNIQUE(id)
);

#创建匿名单主键字段
CREATE TABLE t_dept(
	deptno INT PRIMARY KEY,
	dname VARCHAR(20),
	loc VARCHAR(40)
);

#创建有名主键约束
CREATE TABLE t_dept(
	deptno INT,
	dname VARCHAR(20),
	loc VARCHAR(40),
	CONSTRAINT pk_deptno PRIMARY KEY(deptno)
);

#创建有名多字段主键约束
CREATE TABLE t_dept(
	deptno INT,
	dname VARCHAR(20),
	loc VARCHAR(40),
	CONSTRAINT pk_deptno_dname PRIMARY KEY(deptno,dname)
);

#创建自增约束主键
CREATE TABLE t_dept(
	deptno INT PRIMARY KEY AUTO_INCREMENT,
	dname VARCHAR(20),
	loc VARCHAR(40)
);