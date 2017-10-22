####
#二进制文件
###

#暂停二进制日志
SET SQL_LOG_BIN=0;

#暂停日志后，不会被记录
DROP TABLE t_diary;

#打开二进制日志
SET SQL_LOG_BIN=1;

#打开日志后，会被记录
DROP TABLE t_loader;