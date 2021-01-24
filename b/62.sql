select
  t.注文日,
  t.注文番号,
  t.注文枝番,
  t.数量,
  (h.単価 * t.数量) as 注文金額
from
  注文 as t
  join 廃盤商品 as h on t.商品コード = h.商品コード
where
  注文日 > (
    select
      廃盤日
    from
      廃盤商品
    where
      商品コード = 'A0009'
  )