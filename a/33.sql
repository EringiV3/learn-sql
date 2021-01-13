select
  口座番号,
  名義,
  '○' as 状況
from
  口座
union
select
  口座番号,
  名義,
  '×' as 状況
from
  廃止口座
order by
  名義