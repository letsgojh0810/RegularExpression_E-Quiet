-- User_Order 테이블에서 order_type 'BUY'이고, 2020년 12월 1일 이후의 order_date, sh_code가 6자리 숫자이고 user_id가 1부터 10까지인 데이터를 조회

SELECT *
FROM User_Order
WHERE order_type IN ('BUY') 
AND order_date >= '2020-12-01'  
AND sh_code REGEXP '^[0-9]{6}$' 
AND user_id BETWEEN 1 AND 10; 

/*
order_id|user_id|sh_code|order_type|order_quantity|order_price|order_date         |total_value|
--------+-------+-------+----------+--------------+-----------+-------------------+-----------+
      10|      2|012030 |BUY       |            94|       5264|2024-12-11 09:03:39|     494816|
      15|      4|014790 |BUY       |            91|       3153|2024-07-03 12:51:45|     286923|
      17|      5|051915 |BUY       |            57|      28480|2023-10-31 21:01:16|    1623360|
      23|      2|033180 |BUY       |            78|      88596|2024-06-20 03:03:28|    6910488|
      28|      2|181710 |BUY       |            15|      39476|2024-05-23 12:31:14|     592140|
      34|      4|008260 |BUY       |            72|      13005|2023-11-03 12:43:53|     936360|
      38|      1|009520 |BUY       |            15|      38313|2023-03-29 09:16:10|     574695|
      50|      5|024850 |BUY       |            87|      30501|2021-08-25 12:50:14|    2653587|
      51|      1|139130 |BUY       |            93|      57112|2024-07-29 22:55:50|    5311416|
      53|      2|001940 |BUY       |            65|       2591|2023-12-13 06:33:51|     168415|
      54|      2|000680 |BUY       |            26|      79488|2024-08-15 05:31:06|    2066688|
      55|      1|006840 |BUY       |            92|       8649|2023-03-23 05:06:41|     795708|
      58|      2|004255 |BUY       |            88|      26341|2022-05-27 22:41:41|    2318008|
      70|      5|011155 |BUY       |            38|      16643|2023-04-02 05:47:37|     632434|
      87|      2|096760 |BUY       |             6|      54235|2023-11-16 21:46:03|     325410|
      88|      2|282330 |BUY       |            75|      69563|2021-02-28 05:58:55|    5217225|
      93|      5|138930 |BUY       |            21|      42162|2024-12-26 15:37:41|     885402|
     100|      4|105560 |BUY       |            93|      67246|2024-11-23 12:52:46|    6253878|
*/
