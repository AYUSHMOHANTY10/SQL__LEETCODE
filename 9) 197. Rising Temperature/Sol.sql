select x.id from weather x,weather y where DATEDIFF(x.recordDate,y.recordDate)=1 and x.temperature>y.temperature;
