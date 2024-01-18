1.

-

2.

-

3.

select talnev
from t
where talnev like "*motor*"
;

4.

select t.talnev
from t as t, k as k, a as a
where t.tkod = a.tkod and a.fkog = f.fkod
having f.nev = "Forgó László"
;

5.

select f.nev, f.meghal - f.szul
from t as t, k as k, a as a
where t.tkod = a.tkod and a.fkog = f.fkod
having t.talnev = golyostoll
;

6.

select talnev
from t 
where not tkod in (select tkod from t as t, k as k, a as a where t.tkod = a.tkod and a.fkog = f.fkod)
;

7.

select f.nev, t.talnev
from t as t, k as k, a as a
where t.tkod = a.tkod and a.fkog = f.fkod
where f.szul < 1860 and f.meghal > 1800
;

8.

select f.nev
from t as t, k as k, a as a
where t.tkod = a.tkod and a.fkog = f.fkod
group by nev
having count(nev) >= 3
;

9.

select f.nev, t.talnev
from t as t, k as k, a as a
where t.tkod = a.tkod and a.fkog = f.fkod
having nev = (select f.nev from t as t, k as k, a as a where t.tkod = a.tkod and a.fkog = f.fkod and t.talnev = transzformator)
;

10.
select f.nev, t.talnev
from t as t, k as k, a as a
where t.tkod = a.tkod and a.fkog = f.fkod and f.nev like "*t.talnev*"
 

