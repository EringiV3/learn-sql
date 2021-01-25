select
  イベント番号,
  イベント名称,
  後続イベント番号
from
  イベント名称
where
  後続イベント番号 is not null