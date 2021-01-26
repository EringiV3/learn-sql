select
  クリア結果,
  count(*)
from
  経験イベント
where
  クリア結果 = '1'
group by
  クリア結果
order by
  クリア結果