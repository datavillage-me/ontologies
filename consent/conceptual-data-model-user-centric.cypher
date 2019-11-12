//CYPHER to create the digital-twin consent management data model
MATCH (n) DETACH DELETE n;

CREATE (ds:DataSource {Label: "Data"}),
(gr:DataSource:Graph {Label: "Personal data sub graph"}),
(p:Person:Entity {Label: "Data Owner"}),
(c1:Consent { Label: "Consent"}),
(c2:Consent { Label: "Consent"}),
(cr1:ConsentReceipt { Label: "Consent receipt"}),
(cr2:ConsentReceipt { Label: "Consent receipt"}),
(dp:DataProvider:Entity { Label: "Data provider"}),
(do:DataProcessor:Entity { Label: "Data processor"}),
(pr1:Process { Label: "Process"}),
(pr2:Process { Label: "Data management"}),
(dm:DataProcessor:DataProvider:Entity { Label: "Data manager"})

WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (c1)-[r:FOR_PURPOSE]->(pr1)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (c2)-[r:FOR_PURPOSE]->(pr2)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (c1)-[r:VALID_FOR]->(do)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (c2)-[r:VALID_FOR]->(dm)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (c1)-[r:VALIDATED_BY]->(dm)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (c2)-[r:VALIDATED_BY]->(dp)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (c1)-[r:WITH_SCOPE]->(gr)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (c2)-[r:WITH_SCOPE]->(ds)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (do)-[r:DEFINE]->(pr1)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (dm)-[r:DEFINE]->(pr2)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (c1)-[r:GIVEN_BY]->(p)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (c2)-[r:GIVEN_BY]->(p)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (c1)-[r:BASED_ON]->(cr1)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (c2)-[r:BASED_ON]->(cr2)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (dp)-[r:FEED]->(ds)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (dm)-[r:FEED]->(gr)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (p)-[r:IS_USER_OF]->(do)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dp)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dm)
WITH ds,gr,p,c1,c2,cr1,cr2,dp,do,pr1,pr2,dm CREATE (ds)-[r:LINKED]->(gr)