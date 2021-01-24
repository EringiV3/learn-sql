select
  t.注文番号,
  t.注文枝番,
  t.商品コード,
  s.商品名,
  t.数量
from
  注文 as t
  join 商品 as s on t.商品コード = s.商品コード
where
  t.注文番号 = '201801130115'
order by
  t.注文番号,
  t.注文枝番