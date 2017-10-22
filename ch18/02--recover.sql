####
#数据库的还原
###

#使用 mysql 还原备份的单个数据库
mysql -u root -p < C:\Users\kiky\desktop\t_dept_back.sql

#使用 mysql 还原备份的多个数据库
mysql -u root -p < C:\Users\kiky\desktop\mysqldump_dbs_back.sql

