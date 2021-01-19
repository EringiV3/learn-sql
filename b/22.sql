select
  商品コード
from
  注文
where
  注文日 between '2018-03-01'
  and '2018-03-31'
  and 数量 >= 3