select
  k.口座番号,
  k.名義,
  k.残高,
  t.日付,
  t.取引事由ID,
  t.入金額,
  t.出金額
from
  取引 as t
  join (
    select
      口座番号,
      名義,
      残高,
    from
      口座
    where
      残高 >= 5000000
  ) as k on t.口座番号 = k.口座番号
where
  (
    t.入金額 >= 1000000
    or t.出金額 >= 1000000
  )
  and t.日付 >= '2018-01-01'