select
  t.商品コード,
  s.商品名
from
  注文 as t
  join 商品 as s on t.商品コード = s.商品コード
where
  t.注文日 between '2016-08-01'
  and '2018-08-31'