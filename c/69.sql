select
  e1.イベント番号 as イベント番号,
  e1.イベント名称 as イベント名称,
  e1.前提イベント番号 as 前提イベント番号,
  e2.イベント名称 as 前提イベント名称,
  e1.後続イベント番号 as 後続イベント番号,
  e3.イベント名称 as 後続イベント名称
from
  イベント as e1
  left join イベント as e2 on e1.前提イベント番号 = e2.イベント番号
  left join イベント as e3 on e1.後続イベント番号 = e3.イベント番号
where
  e1.前提イベント番号 is not null
  or e1.後続イベント番号 is not null