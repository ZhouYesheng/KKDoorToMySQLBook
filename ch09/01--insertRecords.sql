####
#插入记录
###

#查询部门表
SELECT * FROM t_dept;

#插入完整记录
INSERT INTO t_dept(deptno,dname,loc) VALUES(3,'cjgong3','ShangeHai3');

#简略版插入完整记录
INSERT INTO t_dept VALUES(4,'cjgong4','ShangeHai4');

#插入部分记录
INSERT INTO t_dept(dname,loc) VALUES('cjgong5','ShangeHai5');