select
  k.口座番号,
  k.名義,
  k.残高,
  t.日付,
  t.取引事由ID,
  t.入金額,
  t.出金額
from
  口座 as k
  join 取引 as t on k.口座番号 = t.口座番号
where
  k.残高 >= 5000000
  and t.日付 >= '2018-01-01'
  and coalesce(t.入金額, 0) + coalesce(t.出金額, 0) >= 1000000