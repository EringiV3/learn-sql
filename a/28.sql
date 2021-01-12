select
  更新日,
  残高
from
  口座
where
  残高 <> 0
  or 更新日 is not null
order by
  残高,
  更新日 desc offset 10 rows fetch next 10 rows only;