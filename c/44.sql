select
  coalesce(前提イベント番号, '前提なし'),
  イベント番号,
  coalesce(後続イベント番号, '後続なし')
from
  イベント
order by
  イベント番号