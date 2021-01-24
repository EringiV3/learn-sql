select
  s.商品コード,
  s.商品名,
  s2.商品コード,
  s2.商品名
from
  商品 as s
  join 商品 as s2 on s.関連商品 = s2.商品コード