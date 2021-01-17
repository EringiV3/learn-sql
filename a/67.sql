select
  t.口座番号 as 口座番号,
  k.名義 as 名義,
  k.残高 as 残高
from
  取引 as t
  join 口座 as k on k.口座番号 = t.口座番号
where
  t.日付 = '2016-02-01'