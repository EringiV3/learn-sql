select
  (
    case
      クリア区分
      when '1' then 'クリアした'
      when '0' then '参加したがクリアしてない'
    end
  ) as 区分,
  count(*) as イベント数
from
  経験イベント
group by
  クリア区分