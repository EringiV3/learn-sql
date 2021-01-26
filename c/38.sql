select
  名称 as なまえ,
  HP as 現在のHP,
  (length(名称) * 10) as 予想ダメージ
from
  パーティー