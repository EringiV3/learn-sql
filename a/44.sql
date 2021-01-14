select
  口座番号,
  残高,
  trunk(残高 * 0.00002, 0) as 利息
from
  口座
order by
  残高 desc;