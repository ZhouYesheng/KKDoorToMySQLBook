####
#展示浮点数的异同
###
#float精度低
#decimal字符串小数精度更高，适合货币金额
CREATE TABLE f_test(
    a FLOAT(38,30),
    b DECIMAL(38,30)
);

SHOW TABLES;

#插入超高精度的数值
INSERT INTO f_test VALUES (12345.000000000000000000001,12345.000000000000000000001);

SELECT * FROM f_test;
