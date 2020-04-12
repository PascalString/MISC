spg=# select * from tb_product right join tb_product_color on tb_product.it_id=tb_product_color.it_product;
 it_id |  it_name  | it_hinmoku | it_id  | it_product | it_color | it_hinmoku_color
-------+-----------+------------+--------+------------+----------+------------------
 p1000 | p1000name | h1000      | pc1002 | p1000      | c3       | hc3
 p1000 | p1000name | h1000      | pc1001 | p1000      | c2       | hc2
 p1000 | p1000name | h1000      | pc1000 | p1000      | c1       | hc1
 p2000 | p2000name | h2000      | pc1004 | p2000      | c2       | hc5
 p2000 | p2000name | h2000      | pc1003 | p2000      | c1       | hc4
 p3000 | p3000name | h3000      | pc1005 | p3000      | c1       | hc6
(6 rows)

select * from tb_product 
right join tb_product_color on tb_product.it_id=tb_product_color.it_product
right join tb_product_sizelot on tb_product.it_id=tb_product_sizelot.it_product
;






 p1000 | p1000name | h1000      | pc1000 | p1000      | c1       | hc1              | ps1000 | p1000      | s1         | hs1
 p1000 | p1000name | h1000      | pc1000 | p1000      | c1       | hc1              | ps1001 | p1000      | s2         | hs2
 p1000 | p1000name | h1000      | pc1000 | p1000      | c1       | hc1              | ps1002 | p1000      | s3         | hs3
 p1000 | p1000name | h1000      | pc1001 | p1000      | c2       | hc2              | ps1000 | p1000      | s1         | hs1
 p1000 | p1000name | h1000      | pc1001 | p1000      | c2       | hc2              | ps1001 | p1000      | s2         | hs2
 p1000 | p1000name | h1000      | pc1001 | p1000      | c2       | hc2              | ps1002 | p1000      | s3         | hs3
 p1000 | p1000name | h1000      | pc1002 | p1000      | c3       | hc3              | ps1000 | p1000      | s1         | hs1
 p1000 | p1000name | h1000      | pc1002 | p1000      | c3       | hc3              | ps1001 | p1000      | s2         | hs2
 p1000 | p1000name | h1000      | pc1002 | p1000      | c3       | hc3              | ps1002 | p1000      | s3         | hs3
 p2000 | p2000name | h2000      | pc1003 | p2000      | c1       | hc4              | ps1003 | p2000      | s1         | hs4
 p2000 | p2000name | h2000      | pc1003 | p2000      | c1       | hc4              | ps1004 | p2000      | s2         | hs5
 p2000 | p2000name | h2000      | pc1004 | p2000      | c2       | hc5              | ps1003 | p2000      | s1         | hs4
 p2000 | p2000name | h2000      | pc1004 | p2000      | c2       | hc5              | ps1004 | p2000      | s2         | hs5
 p3000 | p3000name | h3000      | pc1005 | p3000      | c1       | hc6              | ps1005 | p3000      | s1         | hs6
(14 rows)



select
(
 it_id |  it_name  | it_hinmoku | it_id  | it_product | it_color | it_hinmoku_color | it_id  | it_product | it_sizelot |
 it_hinmoku_sizelot
)


create view vw_pr2mt as
(
	select
	
		tb_product.it_id as it_pid
		,tb_product.it_name
		,tb_product.it_hinmoku
		,tb_product_color.it_id as it_cid
		,tb_product_color.it_color
		,tb_product_color.it_hinmoku_color
		,tb_product_sizelot.it_id as it_sid
		,tb_product_sizelot.it_sizelot
		,tb_product_sizelot.it_hinmoku_sizelot
		,CONCAT(tb_product.it_hinmoku, '-', tb_product_color.it_hinmoku_color, '-', tb_product_sizelot.it_hinmoku_sizelot) as it_hinmoku_name
	
	from tb_product
		right join tb_product_color on tb_product.it_id=tb_product_color.it_product
		right join tb_product_sizelot on tb_product.it_id=tb_product_sizelot.it_product
);



