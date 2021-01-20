select
  *
from
  廃盤商品
where
  廃盤日 between '2016-12-01'
  and '2016-12-31'
union
select
  *
from
  廃盤商品
where
  売上個数 > 100
order by
  売上個数 desc