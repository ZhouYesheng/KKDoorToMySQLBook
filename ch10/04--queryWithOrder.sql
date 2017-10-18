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