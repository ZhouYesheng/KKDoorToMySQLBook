####
#比较运算符
###


#常用比较运算符 =
SELECT 1=1 数值比较,
	'cjgong'='cjgong' 字符串比较,
	1+2=2+3 表达式比较,
	1<=>1 数值比较,
	'cjgong'<=>'cjgong' 字符串比较,
	1+2<=>3+3 表达式比较;

#比较= Vs <=>
SELECT NULL <=> NULL '<=>比较null',
	NULL=NULL '=比较null';

#比较运算符  <> vs !=
SELECT 1<>1 '比较数值',
	'cjgong'<>'cjgong' 字符串比较,
	1+2<>3+3 表达式比较,
	1!=1 数值比较,
	'cjgong'!='cjgong' 字符串比较,
	1+2!=3+3 比较表达式;

#比较运算符  >,>=,<,<=
SELECT 1>=1 '比较数值',
	'cjgong'>='cjgong' 字符串比较,
	1+2>=3+3 表达式比较,
	1>1 数值比较,
	'cjgong'<='cjgong' 字符串比较,
	1+2<3+3 比较表达式;


#正则匹配——^以指定字符串开通
SELECT 'cjgong' REGEXP '^C' 特定字符开头,
	'cjgongcjgongcjgong' REGEXP '^cjgong' 特定字符串开头;

#正则匹配——$以指定字符串结尾
SELECT 'cjgong' REGEXP 'g$' 特定字符结尾,
	'cjgongcjgongcjgong' REGEXP 'cjgong$' 特定字符串结尾;

#正则匹配——. 代表单个任意字符
SELECT 'cjgong' REGEXP '^c....g$' 匹配任意4个字符;

#正则匹配——. 代表单个任意字符
SELECT 'cjgong' REGEXP '^c...g$' 匹配任意3个字符;

#正则匹配——[],[^] 匹配范围内，范围外
SELECT 'cjgong' REGEXP '[abc]' 指定字符串中字符,
	'cjgong' REGEXP '[a-zA-Z]' 指定字符串集合区间,
	'cjgong' REGEXP '[^abc]' 指定字符串外,
	'cjgong' REGEXP '[^a-zA-Z]' 指定字符串集合区间外;

#正则匹配——* 0个以上,+ 1个以上
SELECT 'cjgong' REGEXP 'a*g',
	'cjgong' REGEXP 'a+g';

#正则匹配—— | 指定字符串中的任意一个
SELECT 'cjgong' REGEXP 'cjg' 指定单个字符串,
	'cjgong' REGEXP 'cjg|cjgc' 指定多个字符串;

#正则匹配—— {M},{M,N}指定多个重复指定字符或字符串
SELECT 'cccjgong' REGEXP 'c{3}' 匹配3个c,
	'cccjgong' REGEXP 'g{2}' 匹配2g,
	'cgong' REGEXP 'cj{1,2}' 至少1个最多2个,
	'cjcgong' REGEXP 'cj{1,2}' 至少1个最多2个;



















