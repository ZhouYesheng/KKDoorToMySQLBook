####
#使用mysqldump实现数据库的备份
###

#使用 mysqldump 备份单个数据库
#备份单个库的单个表
mysqldump -u root -p company t_dept > C:\Users\kiky\desktop\t_dept_back.sql

#使用 mysqldump 备份多个数据库
#备份多个整库
mysqldump -u root -p --databases company kk > C:\Users\kiky\desktop\mysqldump_dbs_back.sql

#使用 mysqldump 备份所有数据库
mysqldump -u root -p --all -databases  > C:\Users\kiky\desktop\mysqldump_all_back.sql