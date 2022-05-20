#!/bin/sh
sed -i '\#^  </GlobalNamingResources>#i\
          <Resource name="org.estat.sri.MySqlMappingStore" auth="Container" \n \
          type="javax.sql.DataSource" username="'"$DB_MS_USER"'" password="'"$DB_MS_PWD"'" \n \
          driverClassName="com.mysql.jdbc.Driver" \n \
          url="jdbc:mysql://'"$DB_ADDRESS"'/'"$DB_MS_NAME"'" \n \
          maxActive="64" maxIdle="64"/>' /usr/local/tomcat/conf/server.xml         
sed -i '\#^  </GlobalNamingResources>#i\
          <Resource name="org.estat.sri.MySqlAuthDb" auth="Container" \n \
          type="javax.sql.DataSource" username="'"$DB_AUTH_USER"'" password="'"$DB_AUTH_PWD"'" \n \
          driverClassName="com.mysql.jdbc.Driver" \n \
          url="jdbc:mysql://'"$DB_ADDRESS"'/'"$DB_AUTH_NAME"'" \n \
          maxActive="64" maxIdle="64"/>' /usr/local/tomcat/conf/server.xml
/usr/local/tomcat/bin/catalina.sh run


