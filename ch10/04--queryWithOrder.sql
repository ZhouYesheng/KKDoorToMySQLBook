####
#排序查询
###

#单字段排序查询
#工资升序
SELECT * FROM t_employee ORDER BY sal ASC;

#单字段排序查询
#工资升序（默认）
SELECT * FROM t_employee ORDER BY sal;

#单字段排序查询
# mgr降序
SELECT * FROM t_employee ORDER BY mgr DESC;

#多字段排序
#主序：sal升序	次序：hiredate 降序
SELECT * FROM t_employee ORDER BY sal ASC,Hiredate DESC;