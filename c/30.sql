select
  (
    case
      substring(職業コード, 1, 1)
      when '1' then 'S'
      when '2' then 'M'
      else 'A'
    end
  ) as 職業区分,
  職業コード,
  ID,
  名称
from
  パーティー
order by
  職業コード