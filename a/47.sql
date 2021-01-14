select
  口座番号,
  名義,
  種別,
  残高,
  (
    substring(cast(更新日 as char(10)), 1, 4) || '年' || substring(cast(更新日 as char(10)), 6, 2) || '月' || substring(cast(更新日 as char(10)), 9, 2) || '日'
  ) as 更新日
from
  口座
where
  更新日 >= '2018-01-01'