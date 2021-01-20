select
  *
from
  商品
order by
  単価,
  商品区分,
  商品コード offset 5
fetch first
  15 rows only