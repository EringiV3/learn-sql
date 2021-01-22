select
  a.数量合計 as 割引による販売数,
  trunc(a.割引料合計 / a.数量合計, 0) as 平均割引額
from
  (
    select
      sum(数量) as 数量合計,
      sum(クーポン割引料) as 割引料合計
    from
      注文
    where
      商品コード = 'W0746'
      and クーポン割引料 in not null
  ) as a