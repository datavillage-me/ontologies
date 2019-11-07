//CYPHER to create example with 10 data providers/data processors on how consent and data processing are "wrongly" scaling today
MATCH (n) DETACH DELETE n;

CREATE (ds:DataSource {Label: "Data"}),
(p:Person:Entity {Label: "Person"}),
(c:Consent { Label: "Consent"}),
(cr:ConsentReceipt { Label: "Consent receipt"}),
(dp:DataProvider:Entity { Label: "Data provider"}),
(do:DataProcessor:Entity { Label: "Data processor"}),
(pr:Process { Label: "Process"})
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:FOR_PURPOSE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALID_FOR]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALIDATED_BY]->(dp)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:WITH_SCOPE]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (do)-[r:DEFINE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:BASED_ON]->(cr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (dp)-[r:FEED]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(dp);

CREATE (ds:DataSource {Label: "Data"}),
(p:Person:Entity {Label: "Person"}),
(c:Consent { Label: "Consent"}),
(cr:ConsentReceipt { Label: "Consent receipt"}),
(dp:DataProvider:Entity { Label: "Data provider"}),
(do:DataProcessor:Entity { Label: "Data processor"}),
(pr:Process { Label: "Process"})
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:FOR_PURPOSE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALID_FOR]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALIDATED_BY]->(dp)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:WITH_SCOPE]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (do)-[r:DEFINE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:BASED_ON]->(cr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (dp)-[r:FEED]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(dp);

CREATE (ds:DataSource {Label: "Data"}),
(p:Person:Entity {Label: "Person"}),
(c:Consent { Label: "Consent"}),
(cr:ConsentReceipt { Label: "Consent receipt"}),
(dp:DataProvider:Entity { Label: "Data provider"}),
(do:DataProcessor:Entity { Label: "Data processor"}),
(pr:Process { Label: "Process"})
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:FOR_PURPOSE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALID_FOR]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALIDATED_BY]->(dp)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:WITH_SCOPE]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (do)-[r:DEFINE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:BASED_ON]->(cr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (dp)-[r:FEED]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(dp);

CREATE (ds:DataSource {Label: "Data"}),
(p:Person:Entity {Label: "Person"}),
(c:Consent { Label: "Consent"}),
(cr:ConsentReceipt { Label: "Consent receipt"}),
(dp:DataProvider:Entity { Label: "Data provider"}),
(do:DataProcessor:Entity { Label: "Data processor"}),
(pr:Process { Label: "Process"})
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:FOR_PURPOSE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALID_FOR]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALIDATED_BY]->(dp)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:WITH_SCOPE]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (do)-[r:DEFINE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:BASED_ON]->(cr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (dp)-[r:FEED]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(dp);

CREATE (ds:DataSource {Label: "Data"}),
(p:Person:Entity {Label: "Person"}),
(c:Consent { Label: "Consent"}),
(cr:ConsentReceipt { Label: "Consent receipt"}),
(dp:DataProvider:Entity { Label: "Data provider"}),
(do:DataProcessor:Entity { Label: "Data processor"}),
(pr:Process { Label: "Process"})
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:FOR_PURPOSE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALID_FOR]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALIDATED_BY]->(dp)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:WITH_SCOPE]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (do)-[r:DEFINE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:BASED_ON]->(cr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (dp)-[r:FEED]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(dp);

CREATE (ds:DataSource {Label: "Data"}),
(p:Person:Entity {Label: "Person"}),
(c:Consent { Label: "Consent"}),
(cr:ConsentReceipt { Label: "Consent receipt"}),
(dp:DataProvider:Entity { Label: "Data provider"}),
(do:DataProcessor:Entity { Label: "Data processor"}),
(pr:Process { Label: "Process"})
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:FOR_PURPOSE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALID_FOR]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALIDATED_BY]->(dp)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:WITH_SCOPE]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (do)-[r:DEFINE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:BASED_ON]->(cr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (dp)-[r:FEED]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(dp);

CREATE (ds:DataSource {Label: "Data"}),
(p:Person:Entity {Label: "Person"}),
(c:Consent { Label: "Consent"}),
(cr:ConsentReceipt { Label: "Consent receipt"}),
(dp:DataProvider:Entity { Label: "Data provider"}),
(do:DataProcessor:Entity { Label: "Data processor"}),
(pr:Process { Label: "Process"})
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:FOR_PURPOSE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALID_FOR]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALIDATED_BY]->(dp)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:WITH_SCOPE]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (do)-[r:DEFINE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:BASED_ON]->(cr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (dp)-[r:FEED]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(dp);

CREATE (ds:DataSource {Label: "Data"}),
(p:Person:Entity {Label: "Person"}),
(c:Consent { Label: "Consent"}),
(cr:ConsentReceipt { Label: "Consent receipt"}),
(dp:DataProvider:Entity { Label: "Data provider"}),
(do:DataProcessor:Entity { Label: "Data processor"}),
(pr:Process { Label: "Process"})
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:FOR_PURPOSE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALID_FOR]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALIDATED_BY]->(dp)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:WITH_SCOPE]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (do)-[r:DEFINE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:BASED_ON]->(cr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (dp)-[r:FEED]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(dp);

CREATE (ds:DataSource {Label: "Data"}),
(p:Person:Entity {Label: "Person"}),
(c:Consent { Label: "Consent"}),
(cr:ConsentReceipt { Label: "Consent receipt"}),
(dp:DataProvider:Entity { Label: "Data provider"}),
(do:DataProcessor:Entity { Label: "Data processor"}),
(pr:Process { Label: "Process"})
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:FOR_PURPOSE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALID_FOR]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALIDATED_BY]->(dp)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:WITH_SCOPE]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (do)-[r:DEFINE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:BASED_ON]->(cr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (dp)-[r:FEED]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(dp);

CREATE (ds:DataSource {Label: "Data"}),
(p:Person:Entity {Label: "Person"}),
(c:Consent { Label: "Consent"}),
(cr:ConsentReceipt { Label: "Consent receipt"}),
(dp:DataProvider:Entity { Label: "Data provider"}),
(do:DataProcessor:Entity { Label: "Data processor"}),
(pr:Process { Label: "Process"})
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:FOR_PURPOSE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALID_FOR]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:VALIDATED_BY]->(dp)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:WITH_SCOPE]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (do)-[r:DEFINE]->(pr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (c)-[r:BASED_ON]->(cr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (dp)-[r:FEED]->(ds)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(do)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,p,c,cr,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr CREATE (p)-[r:IS_USER_OF]->(dp);



//CYPHER to create same example but based on user-centric data management system 10 data providers and 5 data processors
MATCH (n) DETACH DELETE n;

CREATE (ds1:DataSource {Label: "Data"}),
(ds2:DataSource {Label: "Data"}),
(ds3:DataSource {Label: "Data"}),
(ds4:DataSource {Label: "Data"}),
(ds5:DataSource {Label: "Data"}),
(ds6:DataSource {Label: "Data"}),
(ds7:DataSource {Label: "Data"}),
(ds8:DataSource {Label: "Data"}),
(ds9:DataSource {Label: "Data"}),
(ds10:DataSource {Label: "Data"}),
(gr:DataSource:Graph {Label: "Personal data sub graph"}),
(p:Person:Entity {Label: "Person"}),
(c1:Consent { Label: "Consent"}),
(c2:Consent { Label: "Consent"}),
(c3:Consent { Label: "Consent"}),
(c4:Consent { Label: "Consent"}),
(c5:Consent { Label: "Consent"}),
(c21:Consent { Label: "Consent"}),
(c22:Consent { Label: "Consent"}),
(c23:Consent { Label: "Consent"}),
(c24:Consent { Label: "Consent"}),
(c25:Consent { Label: "Consent"}),
(c26:Consent { Label: "Consent"}),
(c27:Consent { Label: "Consent"}),
(c28:Consent { Label: "Consent"}),
(c29:Consent { Label: "Consent"}),
(c30:Consent { Label: "Consent"}),
(cr10:ConsentReceipt { Label: "Consent receipt"}),
(cr11:ConsentReceipt { Label: "Consent receipt"}),
(cr12:ConsentReceipt { Label: "Consent receipt"}),
(cr2:ConsentReceipt { Label: "Consent receipt"}),
(dp1:DataProvider:Entity { Label: "Data provider"}),
(dp2:DataProvider:Entity { Label: "Data provider"}),
(dp3:DataProvider:Entity { Label: "Data provider"}),
(dp4:DataProvider:Entity { Label: "Data provider"}),
(dp5:DataProvider:Entity { Label: "Data provider"}),
(dp6:DataProvider:Entity { Label: "Data provider"}),
(dp7:DataProvider:Entity { Label: "Data provider"}),
(dp8:DataProvider:Entity { Label: "Data provider"}),
(dp9:DataProvider:Entity { Label: "Data provider"}),
(dp10:DataProvider:Entity { Label: "Data provider"}),
(do1:DataProcessor:Entity { Label: "Data processor"}),
(do2:DataProcessor:Entity { Label: "Data processor"}),
(do3:DataProcessor:Entity { Label: "Data processor"}),
(do4:DataProcessor:Entity { Label: "Data processor"}),
(do5:DataProcessor:Entity { Label: "Data processor"}),
(pr10:Process { Label: "Process"}),
(pr11:Process { Label: "Process"}),
(pr12:Process { Label: "Process"}),
(pr2:Process { Label: "Data management"}),
(dm:DataProcessor:DataProvider:Entity { Label: "Data manager"})

WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c1)-[r:FOR_PURPOSE]->(pr10)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c2)-[r:FOR_PURPOSE]->(pr10)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c3)-[r:FOR_PURPOSE]->(pr11)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c4)-[r:FOR_PURPOSE]->(pr11)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c5)-[r:FOR_PURPOSE]->(pr12)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c21)-[r:FOR_PURPOSE]->(pr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c22)-[r:FOR_PURPOSE]->(pr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c23)-[r:FOR_PURPOSE]->(pr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c24)-[r:FOR_PURPOSE]->(pr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c25)-[r:FOR_PURPOSE]->(pr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c26)-[r:FOR_PURPOSE]->(pr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c27)-[r:FOR_PURPOSE]->(pr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c28)-[r:FOR_PURPOSE]->(pr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c29)-[r:FOR_PURPOSE]->(pr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c30)-[r:FOR_PURPOSE]->(pr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c1)-[r:VALID_FOR]->(do1)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c2)-[r:VALID_FOR]->(do2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c3)-[r:VALID_FOR]->(do3)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c4)-[r:VALID_FOR]->(do4)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c5)-[r:VALID_FOR]->(do5)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c21)-[r:VALID_FOR]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c23)-[r:VALID_FOR]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c24)-[r:VALID_FOR]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c25)-[r:VALID_FOR]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c26)-[r:VALID_FOR]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c27)-[r:VALID_FOR]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c28)-[r:VALID_FOR]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c29)-[r:VALID_FOR]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c30)-[r:VALID_FOR]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c1)-[r:VALIDATED_BY]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c2)-[r:VALIDATED_BY]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c3)-[r:VALIDATED_BY]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c4)-[r:VALIDATED_BY]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c5)-[r:VALIDATED_BY]->(dm)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c21)-[r:VALIDATED_BY]->(dp1)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c22)-[r:VALIDATED_BY]->(dp2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c23)-[r:VALIDATED_BY]->(dp3)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c24)-[r:VALIDATED_BY]->(dp4)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c25)-[r:VALIDATED_BY]->(dp5)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c26)-[r:VALIDATED_BY]->(dp6)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c27)-[r:VALIDATED_BY]->(dp7)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c28)-[r:VALIDATED_BY]->(dp8)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c29)-[r:VALIDATED_BY]->(dp9)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c30)-[r:VALIDATED_BY]->(dp10)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c1)-[r:WITH_SCOPE]->(gr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c2)-[r:WITH_SCOPE]->(gr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c3)-[r:WITH_SCOPE]->(gr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c4)-[r:WITH_SCOPE]->(gr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c5)-[r:WITH_SCOPE]->(gr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c21)-[r:WITH_SCOPE]->(ds1)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c22)-[r:WITH_SCOPE]->(ds2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c23)-[r:WITH_SCOPE]->(ds3)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c24)-[r:WITH_SCOPE]->(ds4)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c25)-[r:WITH_SCOPE]->(ds5)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c26)-[r:WITH_SCOPE]->(ds6)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c27)-[r:WITH_SCOPE]->(ds7)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c28)-[r:WITH_SCOPE]->(ds8)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c29)-[r:WITH_SCOPE]->(ds9)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c30)-[r:WITH_SCOPE]->(ds10)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (do1)-[r:DEFINE]->(pr10)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (do2)-[r:DEFINE]->(pr10)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (do3)-[r:DEFINE]->(pr11)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (do4)-[r:DEFINE]->(pr11)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (do5)-[r:DEFINE]->(pr12)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (dm)-[r:DEFINE]->(pr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c1)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c2)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c3)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c4)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c5)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c21)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c22)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c23)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c24)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c25)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c26)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c27)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c28)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c29)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c30)-[r:GIVEN_BY]->(p)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c1)-[r:BASED_ON]->(cr10)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c2)-[r:BASED_ON]->(cr10)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c3)-[r:BASED_ON]->(cr11)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c4)-[r:BASED_ON]->(cr11)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c5)-[r:BASED_ON]->(cr12)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c21)-[r:BASED_ON]->(cr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c22)-[r:BASED_ON]->(cr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c23)-[r:BASED_ON]->(cr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c24)-[r:BASED_ON]->(cr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c25)-[r:BASED_ON]->(cr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c26)-[r:BASED_ON]->(cr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c27)-[r:BASED_ON]->(cr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c28)-[r:BASED_ON]->(cr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c29)-[r:BASED_ON]->(cr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (c30)-[r:BASED_ON]->(cr2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (dp1)-[r:FEED]->(ds1)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (dp2)-[r:FEED]->(ds2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (dp3)-[r:FEED]->(ds3)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (dp4)-[r:FEED]->(ds4)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (dp5)-[r:FEED]->(ds5)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (dp6)-[r:FEED]->(ds6)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (dp7)-[r:FEED]->(ds7)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (dp8)-[r:FEED]->(ds8)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (dp9)-[r:FEED]->(ds9)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (dp10)-[r:FEED]->(ds10)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (dm)-[r:FEED]->(gr)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(do1)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(do2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(do3)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(do4)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(do5)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dp1)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dp2)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dp3)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dp4)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dp5)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dp6)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dp7)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dp8)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dp9)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dp10)
WITH ds1,ds2,ds3,ds4,ds5,ds6,ds7,ds8,ds9,ds10,gr,p,c1,c2,c3,c4,c5,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,cr10,cr11,cr12,cr2,dp1,dp2,dp3,dp4,dp5,dp6,dp7,dp8,dp9,dp10,do1,do2,do3,do4,do5,pr10,pr11,pr12,pr2,dm CREATE (p)-[r:IS_USER_OF]->(dm)