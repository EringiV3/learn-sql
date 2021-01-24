select
  t.注文日,
  t.注文番号,
  t.注文枝番,
  t.商品コード,
  coalesce(s.商品名, h.商品名) as 商品名,
  coalesce(s.単価, h.単価) as 単価,
  t.数量,
  (
    coalesce(s.単価, h.単価) * t.数量 - coalesce(t.クーポン割引料, 0)
  ) as 注文金額
from
  注文 as t
  left join 商品 as s on t.商品コード = s.商品コード
  left join 廃盤商品 as h on t.商品コード = h.商品コード
where
  t.注文番号 = '201704030010'