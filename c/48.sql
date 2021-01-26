select
  case
    when sum(MP) < 500 then '敵は見とれている！'
    when sum(MP) >= 500
    and sum(MP) < 1000 then '敵は唖然としている'
    when sum(MP) >= 1000 then '敵はひれ伏している！'
  end
from
  パーティー