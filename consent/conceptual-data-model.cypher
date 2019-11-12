//CYPHER to create the digital-twin consent management data model
MATCH (n) DETACH DELETE n;

CREATE (d:Data {Label: "Personal data"}),
(p:DataSubject:Person {Label: "Data Subject"}),
(c:Consent { Label: "Consent"}),
(dp:DataController:DataProvider:Oganisation:Entity { Label: "Data controller & Data provider"}),
(do:DataProcessor:ThirdParty:Oganisation:Entity { Label: "Data processor (Third party)"}),
(pr:Processing { Label: "Processing"}),
(ds:DataSharing:Processing { Label: "Data sharing (Processing)"}),
(pu:Purpose { Label: "Purpose"})
WITH d,p,c,dp,do,pr,ds,pu CREATE (c)-[r:FOR_PROCESSING]->(pr)
WITH d,p,c,dp,do,pr,ds,pu CREATE (c)-[r:FOR_PROCESSING]->(ds)
WITH d,p,c,dp,do,pr,ds,pu CREATE (c)-[r:FOR_PURPOSE]->(pu)
WITH d,p,c,dp,do,pr,ds,pu CREATE (c)-[r:IS_PROVIDED_TO]->(dp)
WITH d,p,c,dp,do,pr,ds,pu CREATE (c)-[r:FOR_PERSONAL_DATA]->(d)
WITH d,p,c,dp,do,pr,ds,pu CREATE (dp)-[r:DEFINE]->(pr)
WITH d,p,c,dp,do,pr,ds,pu CREATE (dp)-[r:DEFINE]->(ds)
WITH d,p,c,dp,do,pr,ds,pu CREATE (p)-[r:HAS_CONSENT]->(c)
WITH d,p,c,dp,do,pr,ds,pu CREATE (dp)-[r:STORE]->(d)
WITH d,p,c,dp,do,pr,ds,pu CREATE (p)-[r:IS_USER_OF]->(do)
WITH d,p,c,dp,do,pr,ds,pu CREATE (p)-[r:IS_USER_OF]->(dp)
WITH d,p,c,dp,do,pr,ds,pu CREATE (ds)-[r:SHARE_DATA_WITH_THIRD_PARTY]->(do)