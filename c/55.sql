select
  イベント番号,
  クリア結果
from
  経験イベント
where
  クリア区分 = '1'
  and イベント番号 in (
    select
      イベント番号
    from
      イベント
    where
      タイプ in ('1', '3')
  )