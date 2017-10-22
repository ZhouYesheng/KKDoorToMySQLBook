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


#删除所有二进制日志文件
RESET MASTER;

#删除指定索引之前的所有二进制日志
PURGE MASTER LOGS TO 'DESKTOP-6POJJMP-bin.000003';

#删除指定日期之前的所有日志
PURGE MASTER LOGS BEFORE '2017-10-22 16:50:00';