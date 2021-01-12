select
  *
from
  口座
where
  残高 < 10000
  and 更新日 is not null;