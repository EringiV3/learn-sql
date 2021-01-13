select
  口座番号,
  名義,
  (
    case
      残高
      when 残高 < 100000 then 'C'
      when (
        残高 >= 100000
        and 残高 < 1000000
      ) then 'B'
      else 'A'
    end
  ) as 残高ランク
from
  口座;