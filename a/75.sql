select
  k1.名義,
  k1.口座番号,
  k1.種別,
  k1.残高,
  k1.更新日,
from
  口座 as k1
  join (
    select
      名義,
      count(名義) as 口座数
    from
      口座
    group by
      名義
    having
      count(名義) > 1
  ) as k2 on k1.名義 = k2.名義
order by
  k1.名義,
  k1.口座番号