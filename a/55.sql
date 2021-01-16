select
  substring(口座番号, 7, 1) as 口座番号グループ,
  count(*) as 件数
from
  口座
group by
  substring(口座番号, 7, 1)
order by
  件数 desc