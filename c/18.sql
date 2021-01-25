select
  名称,
  状態コード
from
  パーティー
where
  状態コード not in ('00', '09')