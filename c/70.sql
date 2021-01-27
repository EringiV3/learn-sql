select
  e1.イベント番号,
  e1.イベント名称,
  e2.前提イベント数
from
  イベント as e1
  join (
    select
      前提イベント番号,
      count(*) as 前提イベント数
    from
      イベント
    where
      前提イベント番号 is not null
    group by
      前提イベント番号
  ) as e2 on e1.イベント番号 = e2.前提イベント番号
order by
  e1.前提イベント数;