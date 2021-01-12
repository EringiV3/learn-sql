select
  口座番号
from
  口座
union
select
  口座番号
from
  廃止口座
order by
  口座番号;