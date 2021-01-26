select
  substring(職業コード, 1, 1),
  max(HP),
  min(HP),
  avg(HP),
  max(MP),
  min(MP),
  avg(MP)
from
  パーティー
group by
  substring(職業コード, 1, 1)