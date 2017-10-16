####
#更新记录
###


#查询部门表
SELECT * FROM t_dept;

#更新特定记录
UPDATE t_dept
	SET loc='ShangeHai2' WHERE dname='cjgong1';

#更新所有记录
UPDATE t_dept
    SET loc='ShangeHai8' WHERE deptno<=6;

#无条件更新所有记录
UPDATE t_dept
    SET loc='ShangeHai9';