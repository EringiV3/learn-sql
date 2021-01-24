select
  s.商品コード,
  s.商品名,
  s.単価,
  coalesce(t.数量, 0) as 売上数量,
  s.単価 * coalesce(t.個数, 0) as 総売上金額
from
  商品 as s
  left join (
    select
      商品コード,
      sum(数量) as 数量
    from
      注文
    where
      substring(商品コード, 1, 1) = 'B'
    group by
      商品コード
  ) as t on s.商品コード = t.商品コード
where
  substring(s.商品コード, 1, 1) = 'B'
order by
  s.商品コード