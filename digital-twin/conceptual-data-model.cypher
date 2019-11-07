//CYPHER to create the digital-twin personal data model
MATCH (n) DETACH DELETE n;

CREATE (p1:Person:Entity {Label: "Me"}),
(p2:Person:Entity:Social {Label: "Person"}),
(o1:Organisation:Social {Label: "Organisation"}),
(e1:Entity:Social {Label: "Entity"}),
(l:Place:Geospatial {Label: "Place"}),
(t:Transport:Geospatial {Label: "Transport"}),
(m:Media:Interest {Label: "Media"}),
(e:Event:Interest {Label: "Event"}),
(a:Activity:Health {Label: "Activity"}),
(c:checkup:Health {Label: "Checkup"}),
(f:Food:Health {Label: "Food"}),
(tr:Product:Consumption {Label: "Product"})
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:IS_FRIEND]->(p2)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:FAMILY_WITH]->(p2)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:WORK_WITH]->(p2)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:WORK_FOR]->(o1)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:MEET]->(e1)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (e1)-[r:AT]->(l)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:MESSAGE]->(e1)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:STAY_AT]->(l)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:LIVE_AT]->(l)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:WRITE]->(m)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:WATCH]->(m)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:LISTEN]->(m)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:READ]->(m)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:LIKE]->(m)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:FAVORITE]->(m)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (m)-[r:MADE_BY]->(p2)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:PARTICIPATE]->(e)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (e)-[r:AT]->(l)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (e)-[r:WITH]->(p2)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:EAT]->(f)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:DRINK]->(f)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:DO]->(a)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (a)-[r:FROM]->(l)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (a)-[r:TO]->(l)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (a)-[r:WITH]->(p2)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (a)-[r:BY]->(t)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:DO]->(c)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (c)-[r:BY]->(p2)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:BUY]->(tr)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:SELL]->(tr)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (p1)-[r:RENT]->(tr)
WITH p1,p2,o1,e1,l,t,m,e,a,f,tr,c CREATE (tr)-[r:TO]->(e1)