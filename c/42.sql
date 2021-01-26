select
  名称 as なまえ,
  HP,
  pow(HP, 0) as 攻撃1回目,
  pow(HP, 1) as 攻撃2回目,
  pow(HP, 2) as 攻撃3回目
from
  パーティー
where
  職業コード = '10'