select
  k.ルート番号,
  k.イベント番号,
  e.イベント名称,
  k.クリア結果
from
  経験イベント as k
  join イベント as e on k.イベント番号 = e.イベント番号
where
  クリア区分 = '1'
order by
  k.ルート番号