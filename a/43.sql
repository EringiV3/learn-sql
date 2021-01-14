select
  *
from
  口座
where
  length(cast(残高 as varchar)) >= 4
  and substring(
    cast(残高 as varchar),
    length(cast(残高 as varchar)) - 2,
    3
  ) = '000';