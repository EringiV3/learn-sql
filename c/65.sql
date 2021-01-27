select
  p.ID,
  p.なまえ,
  c1.コード名称 as 職業,
  c2.コード名称 as 状態
from
  パーティー as p
  join (
    select
      コード値,
      コード名称
    from
      コード
    where
      コード種別 = '1'
  ) as c1 on p.職業コード = c1.コード値
  join (
    select
      コード値,
      コード名称
    from
      コード
    where
      コード種別 = '2'
  ) as c2
  and p.職業コード = c2.コード値