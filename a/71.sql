select
  k.口座番号 as 口座番号,
  k.名義 as 名義,
  k.残高 as 残高,
  t.日付 as 日付,
  j.取引事由名 as 取引事由名,
  t.入金額 as 入金額,
  t.出金額 as 出金額,
from
  口座 as k
  join 取引 as t on k.口座番号 = t.口座番号
  join 取引事由 as j on t.取引事由ID = j.取引事由ID
where
  k.口座番号 = '0887132'
order by
  t.取引番号