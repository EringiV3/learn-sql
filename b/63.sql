select
  s.商品コード,
  s.商品名,
  s.単価,
  t.注文日,
  t.注文番号,
  t.数量,
  s.単価 * t.数量 as 売上金額
from
  注文 as t
  join 商品 as s on t.商品コード = s.商品コード
where
  t.商品コード = 'S0604'
order by
  t.注文枝番