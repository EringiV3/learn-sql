update
  口座
set
  残高 = 残高 + (
    select
      coalesce(sum(入金額) - sum(出金額), 0)
    from
      取引
    where
      口座番号 = '0351333'
      and 取引日 = '2018-01-11'
  ),
  更新日 = '2018-01-11'
where
  口座番号 = '0351333'