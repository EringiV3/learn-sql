select
  口座番号,
  残高
from
  口座
where
  残高 = 0
union
select
  口座番号,
  解約時残高
from
  廃止口座
where
  解約時残高 <> 0
order by
  口座番号;