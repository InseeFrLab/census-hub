# Census-hub

Images pour les outils de la [suite SDMX-RI](https://ec.europa.eu/eurostat/fr/web/sdmx-infospace/sdmx-it-tools/sdmx-ri) 

## Maweb

- Volumes :
  - /chemin/des/logs:/usr/local/tomcat/logs
  - /chemin/des/ma-params:/usr/local/tomcat/classpath/ma-params
Le dossier ma-params est à initialiser à partir du repertoire app\classpath\ma-params présent dans le [livrable eurostat du mapping assistant](https://circabc.europa.eu/sd/a/5a995965-b3dd-4173-9161-d1dee6275960/MappingAssistantWebApp_JAVA_v8_2021-10-07.zip).

## Nsiws

- Variables d'environnement : 
  - DB_ADDRESS="xx.xx.xxx.xx adresse du serveur de bdd"
  - DB_MS_NAME="nom de la bdd du mapping store" 
  - DB_MS_USER="user de la bdd du mapping store" 
  - DB_MS_PWD="pwd de la bdd du mapping sotre"   
  - DB_AUTH_NAME="nom de la bdd d'authentification"  
  - DB_AUTH_USER="user de la bdd d'authentification" 
  - DB_AUTH_PWD="pwd de la bdd d'authentification"

- Volumes :
  - /chemin/des/logs:/usr/local/tomcat/logs
  - /chemin/des/nsiws-params:/usr/local/tomcat/classpath/nsiws-params
Le dossier nsiws-params est à initialiser à partir du repertoire app\nsiws-params présent dans le [livrable eurostat du nsiws](https://maven.java.net/content/repositories/releases//org/glassfish/metro/metro-standalone/2.3.1/metro-standalone-2.3.1.zip).
