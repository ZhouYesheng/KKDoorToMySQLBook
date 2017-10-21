####
#合并查询
###


#UNION合并查询
#查询计算机【t_cstduent】
#和音乐系【t_mstudent】全部学生
SELECT * FROM t_cstudent
	UNION SELECT * FROM t_mstudent;

#UNION ALL合并查询
#查询计算机【t_cstduent】
#和音乐系【t_mstudent】全部学生
SELECT * FROM t_cstudent
	UNION ALL SELECT * FROM t_mstudent;