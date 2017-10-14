####
#测试位类型数据
###

CREATE TABLE bit_test(
	id BIT(8)
);

#添加两个值，分别为10进制的11和2进制的11
INSERT INTO bit_test values (11),(b'11');

#10进制的方式查询
SELECT id+0 FROM bit_test;

#2进制的方式查询
SELECT bin(id+0) FROM bit_test;