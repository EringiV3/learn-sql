select
  substring(注文番号, 1, 6) as 年月,
  count(*) as 注文件数
from
  注文
where
  注文枝番 = 1
group by
  substring(注文番号, 1, 6)
order by
  注文日 desc