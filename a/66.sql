select
  k.口座番号 as 口座番号,
  k.名義 as 名義,
  k.残高 as 残高,
  t.日付 as 日付,
  t.入金額 as 入金額,
  t.出金額 as 出金額
from
  口座 as k
  join 取引 as t on k.口座番号 = t.口座番号
where
  k.口座番号 = '0887132'
order by
  t.取引番号