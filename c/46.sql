select
  (
    case
      タイプ
      when '1' then '強制',
      when '2' then 'フリー',
      when '3' then '特殊'
    end
  ) as タイプ,
  count(*)
from
  イベント
group by
  タイプ