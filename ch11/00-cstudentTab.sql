####
#计算机学生表
###
#创建学生c表
CREATE TABLE t_cstudent(
	name VARCHAR(20),
	sex CHAR(1)
);

#查询全部
SELECT * FROM t_cstudent;

#插入测试数据
INSERT INTO t_cstudent
	VALUES('ccjong1','男'),
		('ccjong2','女'),
		('ccjong3','男'),
		('ccjong4','女'),
		('ccjong5','女'),
		('ccjong','男');