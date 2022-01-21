#!/bin/sh

sed -i '\#^  </GlobalNamingResources>#i\
          <Resource name="org.estat.sri.MySqlMappingStore" auth="Container" \n \
          type="javax.sql.DataSource" username="mauser" password="${1}" \n \
          driverClassName="com.mysql.jdbc.Driver" \n \
          url="jdbc:mysql://10.132.15.230/msdb" \n \
          maxActive="64" maxIdle="64"/>' /usr/local/tomcat/conf/server.xml     
sed -i '\#^  </GlobalNamingResources>#i\
          <Resource name="org.estat.sri.MySqlAuthDb" auth="Container" \n \
          type="javax.sql.DataSource" username="mauser" password="mauserpwd" \n \
          driverClassName="com.mysql.jdbc.Driver" \n \
          url="jdbc:mysql://10.132.15.230/authdb" \n \
          maxActive="64" maxIdle="64"/>' /usr/local/tomcat/conf/server.xml
/usr/local/tomcat/bin/catalina.sh run
