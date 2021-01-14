select
  口座番号,
  残高,
  (
    case
      when 残高 < 500000 then trunk(残高 * 0.01, 0)
      when 残高 >= 500000
      and 残高 < 2000000 then trunk(残高 * 0.02, 0)
      when 残高 >= 2000000 then trunk(残高 * 0.03, 0)
    end
  ) as 残高別利息
from
  口座
order by
  残高別利息 desc,
  口座番号;