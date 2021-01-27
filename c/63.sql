select
  e.イベント番号,
  e.イベント名称,
  k.クリア区分
from
  イベント as e
  join 経験イベント as k on e.イベント番号 = k.イベント番号
where
  タイプ = '1'