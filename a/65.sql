select
  t.口座番号 as 口座番号,
  t.日付 as 日付,
  j.取引事由名 as 取引事由名,
  (
    case
      when t.入金額 is not null then t.入金額
      else t.出金額
    end
  ) as 取引金額
from
  取引 as t
  join 取引事由 as j on t.取引事由ID = j.取引事由ID
where
  t.口座番号 in ('0311240', '1234161', '2750902')
order by
  t.口座番号,
  t.取引番号