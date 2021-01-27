update
  経験イベント
set
  クリア区分 = '1',
  クリア結果 = 'B',
  ルート番号 = (
    select
      coalesce(max(ルート番号), 1)
    from
      経験イベント
  )
where
  イベント番号 = 9;

insert into
  経験イベント
values
  (
    (
      select
        後続イベント番号
      from
        イベント
      where
        イベント番号 = 9
    ),
    '0',
    null,
    null
  );