####
#创建触发器
###

#创建日志表
CREATE TABLE t_diary(
	diaryno INT PRIMARY KEY AUTO_INCREMENT,
	tablename VARCHAR(20),
	diarytime DATETIME
);

#查询日志表
SELECT * FROM t_diary;

#查询部门表
SELECT * FROM t_dept;


#创建部门表触发器
CREATE TRIGGER tri_diarytime
	BEFORE INSERT ON t_dept FOR EACH ROW
		INSERT INTO t_diary(tablename,diarytime) VALUES('t_dept',NOW());


#插入新的部门表记录---》触发了tri_diarytime
INSERT INTO t_dept VALUES(1,'cjgongdept','ShangXi');