select
  注文日
from
  注文
order by
  注文日 desc offset 0 rows
fetch first
  10 only