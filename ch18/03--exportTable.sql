####
#数据表的导出
###

#使用 SELECT INTO OUTFILE 实现表导出
SELECT * FROM	t_dept
	INTO OUTFILE 'C:\Users\kiky\desktop\t_dept.txt'
		FIELDS TERMINATED BY '\、'
		OPTIONALLY ENCLOSED BY '\"'
		LINES STARTING BY '\>'
		TERMINATED BY '\r\n';

#使用 mysqldump 实现表导出
mysqldump -u root -p123456 -T C:\Users\kiky\desktop\ company t_dept

#使用 mysql 实现表导出
mysql -u root -p123456 -e "SELECT * FROM t_dept" company > C:\Users\kiky\desktop\t_dept.txt