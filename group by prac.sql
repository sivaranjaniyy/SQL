select "origin",count(*) from cars group by "origin"

select "car",count(*)
from cars group by "car"
having count(*)>1