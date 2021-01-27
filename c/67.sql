select
  e.イベント番号,
  e.クリア区分,
  e.クリア結果 || ':' || c.コード名称 as クリア結果
from
  経験イベント as e
  left join (
    select
      コード値,
      コード名称
    from
      コード
    where
      コード種別 = '4'
  ) as c on e.クリア結果 = c.コード値
union
select
  e.イベント番号,
  e.クリア区分,
  c.コード値 || ':' || c.コード名称 as クリア結果
from
  経験イベント as e
  right join (
    select
      コード値,
      コード名称
    from
      コード
    where
      コード種別 = '4'
  ) as c on e.クリア結果 = c.コード値