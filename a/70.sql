select
  distinct t.取引事由ID,
  j.取引時有名
from
  取引 as t full
  join 取引事由 j on t.取引事由ID = j.取引事由ID