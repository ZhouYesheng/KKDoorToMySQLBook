####
#封装各种视图
###

#创建学生组表
CREATE TABLE t_group(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30)
);

#查询学生组表
SELECT * FROM t_group;

#插入测试数据到学生组表
INSERT INTO t_group(name) VALUES('group_1'),
	('group_2'),('group_3'),('group_4'),('group_5');

#创建学生表
CREATE TABLE t_student(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(30),
	sex CHAR(1),
	group_id INT,
	CONSTRAINT fk_groupid FOREIGN KEY(group_id) REFERENCES t_group(id)
);

#查询学生表
SELECT * FROM t_student;

#插入学生表测试数据
INSERT INTO t_student(name,sex,group_id) VALUES
	('cjgong1','M',1),
	('cjgong2','M',1),
	('cjgong3','M',2),
	('cjgong4','W',2),
	('cjgong5','W',2),
	('cjgong6','W',2),
	('cjgong7','M',3),
	('cjgong8','W',3),
	('cjgong9','W',4);

#常亮视图
CREATE VIEW v_test1 AS
	SELECT 3.1415926;

#查询常亮视图
SELECT * FROM v_test1;

#聚合视图
CREATE VIEW view_test2  AS
	SELECT COUNT(name) FROM t_student;

#查询聚合视图
SELECT * FROM view_test2;

#分组视图
CREATE VIEW view_test3 AS
	SELECT name FROM t_student GROUP BY group_id;

#查询分组视图
SELECT * FROM view_test3;

#内联视图
CREATE VIEW view_test4 AS
	SELECT s.name FROM t_student as s,t_group as g
		WHERE s.group_id=g.id and g.id=2;
#查询内联视图
SELECT * FROM view_test4;

#外连视图
CREATE VIEW view_test5 AS
	SELECT s.name FROM t_student as s
		LEFT JOIN t_group as g
			ON s.group_id=g.id  WHERE g.id=2;

#查询外连视图
SELECT * FROM view_test5;


#子查询视图
CREATE VIEW view_test6 AS
	SELECT s.name FROM t_student AS s
		WHERE s.group_id IN (SELECT id FROM t_group);

#查询子查询视图
SELECT * FROM view_test6;

#联合视图
CREATE VIEW view_test7 AS
	 SELECT id,name FROM t_student
	 	UNION ALL SELECT id,name FROM t_group;

#查询联合视图
SELECT * FROM view_test7;
