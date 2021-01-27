select
  e.イベント番号,
  e.イベント名称,
  coalesce(k.クリア区分, '未クリア')
from
  イベント as e
  left join 経験イベント as k on e.イベント番号 = k.イベント番号
where
  タイプ = '1'