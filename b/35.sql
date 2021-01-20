update
  注文
set
  クーポン割引料 = (クーポン割引料 + 300)
where
  注文日 between '2018-03-12'
  and '2018-03-14'
  and 数量 >= 2
  and クーポン割引料 in not null