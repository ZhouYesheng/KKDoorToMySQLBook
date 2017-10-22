####
#数据迁移
###

#相同版本数据迁移
mysqldump -h hostname1 -u root -password=psd1 --all-databases | mysql -h hostname2 -u -root -password=psd2