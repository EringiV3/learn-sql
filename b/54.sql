select
  商品コード
from
  注文
where
  substring(商品コード, 1, 1) = 'Z'
group by
  商品コード
having
  sum(数量) >= 100