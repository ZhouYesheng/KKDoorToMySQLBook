####
#导入数据表
###

#使用 LOAD DATA INFILE 实现表导入
LOAD DATA INFILE 'C:\Users\kiky\desktop\t_dept.txt' INTO TABLE t_dept
	FIELDS TERMINATED BY '\、'
	OPTIONALLY ENCLOSED BY '\"'
	TERMINATED BY '\r\n';


#使用 mysqlimport 实现表导入
mysqlimport -u root -p company C:\Users\kiky\desktop\t_dept.txt "--fields-terminated-by=、" "--fields-optionally-enclosed-by="" "--lines-terminated-by=\r\t"