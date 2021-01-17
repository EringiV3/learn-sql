select
  t.取引番号 as 取引番号,
  (cast(t.取引事由ID as varchar) || ':' || j.取引事由名) as 取引事由,
  t.日付 as 日付,
  t.口座番号 as 口座番号,
  t.入金額 as 入金額,
  t.出金額 as 出金額
from
  取引 as t
  right join 取引事由 as j on j.取引事由ID = t.取引事由ID