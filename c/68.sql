select
  e1.イベント番号 as イベント番号,
  e1.イベント名称 as イベント名称,
  e1.前提イベント番号 as 前提イベント番号,
  e2.イベント名称 as 前提イベント名称
from
  イベント as e1
  join イベント as e2 on e1.前提イベント番号 = e2.イベント番号
where
  e1.前提イベント is not null