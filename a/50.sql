select
  count(*)
from
  口座
where
  種別 <> '1'
  and 残高 >= 1000000
  and 更新日 <= '2017-12-31';