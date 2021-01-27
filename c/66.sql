select
  p.ID,
  coalesce(p.名称, '仲間になっていない！') as なまえ,
  c.コード名称 as 職業
from
  パーティー as p
  right join (
    select
      コード値,
      コード名称
    from
      コード
    where
      コード種別 = '1'
  ) as c
  and p.職業コード = c.コード値