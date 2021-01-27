select
  イベント番号,
  名称
from
  イベント
where
  イベント番号 not in (
    select
      イベント番号
    from
      経験イベント
  )
order by
  イベント番号