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


#创建多执行触发器
DELIMITER $$
CREATE TRIGGER tri_diarytime2
	AFTER INSERT ON t_dept FOR EACH ROW
		BEGIN
			INSERT INTO t_diary(tablename,diarytime) VALUES('t_dept',NOW());
			INSERT INTO t_diary(tablename,diarytime) VALUES('t_dept',NOW());
		END $$
#恢复定界符
DELIMITER ;

#插入新的部门表记录---》触发了tri_diarytime2、tri_diarytime1
INSERT INTO t_dept VALUES(2,'cjgongdept2','ShangXi2');