select
  t.注文日,
  (s.商品コード || ':' || s.商品名) as 商品,
  coalesce(t.数量, 0) as 数量
from
  注文 as t
  right join 商品 as s on t.商品コード = s.商品コード
where
  s.商品区分 = '3'