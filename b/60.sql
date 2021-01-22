insert into
  注文
select
  注文日,
  注文番号,
  max(注文枝番) + 1,
  'S1003',
  1,
  null
from
  注文
where
  注文日 = '2018-03-21'
  and 注文番号 = '201803210080'
group by
  注文日,
  注文番号;

insert into
  注文
select
  注文日,
  注文番号,
  max(注文枝番) + 1,
  'A0052',
  2,
  500
from
  注文
where
  注文日 = '2018-03-22'
  and 注文番号 = '201803220901'
group by
  注文日,
  注文番号;