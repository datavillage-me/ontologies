# ONTOLOGIES: OWL + WIDOCO + NETLIFY
This project describes the two ontologies used by https://www.datavillage.me to build the Digital Twins of people and to process these Digital Twins in a full transparent way.
This project uses WIDICO (https://github.com/dgarijo/Widoco) to generate documentation of ontologies.
Generated ontology websites are deployed automatically on https://www.netlify.com.

## Ontology digital-twin (ONGOING WORK)
It defines the way personal data are organised in the five Digital Twins.
SOCIAL|GEOSPATIAL|KNOWLEDGE&INTEREST|HEALTH|CONSUMPTION

https://www.datavillage.me/ontologies/digital-twin/

## Ontology LConsent (ONGOING WORK)
It formalizes the way in which consent is organized between the end user and organizations within a user-centric data management system.
https://www.datavillage.me/ontologies/lconsent/

## Deployment
### Make sure widoco jar file is included into your github repository
```
- Download widico executable https://github.com/dgarijo/WIDOCO/releases/tag/v1.4.12
- Include into your git repository
```
### Create your Netlify website
```
- Go to the "Sites" section  
- Create new website by using "New site from Git" button
- Connect with your Github account
- Choose your repository with containing your ontology .owl file
- Create your website
```
### Configure deployment
```
- Go in the "Deploys" section 
- Configure deployment settings by using "Deploy settings" button
- Edit settings
- In the "Build command" put the command: "java -jar PATH-TO-WIDOCO-JAR-IN-YOUR-REPO/widoco-1.4.12-jar-with-dependencies.jar -ontFile PATH-TO-OWL-FILEIN-YOUR-REPO -outFolder OUTPUT-FOLDER-USED-BY_NETLIFY-FOR-SITE-GENERATION -webVowl 
- In the "Publish directory" put OUTPUT-FOLDER-USED-BY_NETLIFY-FOR-SITE-GENERATION
- Save settings
```
### Deploy
```
- Do it manually via "Trigger deploy" button in the "Deploys" section
- Do it automatically by pushing your changes into your git repository on master branch.