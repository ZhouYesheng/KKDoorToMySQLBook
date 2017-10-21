####
#音乐学生表
###
#创建学生m表
CREATE TABLE t_mstudent(
	name VARCHAR(20),
	sex CHAR(1)
);

#查询全部
SELECT * FROM t_mstudent;

#插入测试数据
INSERT INTO t_mstudent
	VALUES('ccjong','男'),
		('ccjong1','女'),
		('ccjong2','男'),
		('ccjong3','男'),
		('ccjong4','女'),
		('ccjong5','女');

