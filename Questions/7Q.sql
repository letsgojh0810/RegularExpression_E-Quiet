-- order_price 90000원 이상, sh_code가 ‘0’로 시작하는 경우 찾기

-- 정규 x
SELECT *
FROM User_Order
WHERE order_price >= 90000
AND sh_code LIKE '0%';

-- 정규 o
SELECT *
FROM User_Order
WHERE order_price >= 90000
AND sh_code REGEXP '^0';

/*
order_id|user_id|sh_code|order_type|order_quantity|order_price|order_date         |total_value|
--------+-------+-------+----------+--------------+-----------+-------------------+-----------+
      16|      1|092230 |SELL      |            34|      98997|2023-10-17 14:52:18|    3365898|
      36|      9|051910 |SELL      |            46|      90647|2020-05-25 01:41:10|    4169762|
      39|      5|001120 |BUY       |            34|      99854|2020-11-21 19:08:05|    3395036|
      43|     10|003550 |BUY       |            70|      94474|2023-10-23 13:16:24|    6613180|
      64|      5|066575 |SELL      |            63|      94196|2023-04-17 23:39:44|    5934348|
      83|      5|010120 |SELL      |             8|      97590|2022-06-22 07:04:34|     780720|
      86|      3|011155 |SELL      |             5|      96484|2024-09-22 00:06:29|     482420|
      94|     10|001940 |BUY       |             9|      94301|2023-09-23 14:04:07|     848709|
      95|      1|012630 |SELL      |            67|      93887|2024-11-09 20:36:04|    6290429|
      99|      2|00104K |SELL      |             5|      97182|2022-10-26 15:41:08|     485910|
*/