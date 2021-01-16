select
  substring(名義, 1, 1) as 名義 count(名義) as 件数,
  avg(len(replace(名義, ' ', ','))) as 平均
from
  口座
group by
  substring(名義, 1, 1)
having
  件数 >= 10
  or 平均 > 5