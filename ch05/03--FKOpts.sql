####
#外键约束测试
###

#创建主表--部门表
CREATE TABLE t_dept(
	deptno INT PRIMARY KEY,
	dname VARCHAR(20),
	loc VARCHAR(40)
);

#描述表
DESC t_dept;

#删除表
DROP TABLE t_dept;

#创建子表---员工表
#并外键关联主表（部门表）
CREATE TABLE t_employee(
	empno INT PRIMARY KEY,
	ename VARCHAR(20),
	job VARCHAR(40),
	MGR INT,
	Hiredate DATE,
	sal DECIMAL(10,2),
	comm DECIMAL(10,2),
	deptno INT,
	CONSTRAINT fk_deptno
		FOREIGN KEY(deptno) REFERENCES t_dept(deptno)
);

#查看员工表
DESC t_employee;