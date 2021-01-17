select
  a.日付,
  (
    select
      max(入金額)
    from
      取引
    where
      口座番号 = '3104451'
  ) as 最大入金額,
  (
    select
      max(出金額)
    from
      取引
    where
      口座番号 = '3104451'
  ) as 最大出金額,
from
  (
    select
      日付
    from
      取引
    where
      口座番号 = '3104451'
    group by
      日付
    having
      sum(入金額) > 0
      and sum(出金額) > 0
  ) as a