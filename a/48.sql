select
  (coalesce(cast(更新日 as varchar), '設定無し')) as 更新日
from
  口座;