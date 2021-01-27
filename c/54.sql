update
  パーティー
set
  MP = (
    select
      round(sum(MP * 0.1))
    from
      パーティー
    where
      職業コード not in ('20')
  )
where
  職業コード = '20'