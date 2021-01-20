select
  注文日,
  (注文番号 || '-' || cast(注文枝番 as varchar)),
  商品コード,
  数量,
  クーポン割引料
from
  注文
where
  注文番号 between '201710010001'
  and '201710319999'