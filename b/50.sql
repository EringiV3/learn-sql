select
  商品コード,
  sum(数量)
from
  注文
group by
  商品コード
order by
  sum(数量) desc,
  商品コード offset 0 rows fetch next 10 rows only