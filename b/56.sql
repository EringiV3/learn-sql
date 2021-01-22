update
  注文
set
  商品コード = (
    select
      商品コード
    from
      商品
    where
      商品区分 = '2'
      and 商品名 like '%ブーツ%'
      and 商品名 like '%雨%'
      and 商品名 like '%安心%'
  )
where
  注文日 = '2018-03-15'
  and 注文番号 = '201803150014'
  and 注文枝番 = 1