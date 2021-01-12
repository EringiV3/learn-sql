select
  更新日
from
  口座
where
  更新日 is not null
order by
  更新日 offset 0 rows fetch next 10 rows only;