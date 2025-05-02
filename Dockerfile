FROM tomcat:9.0.84-jdk17-temurin

# Copy your tomcat-users.xml config
COPY tomcat-users.xml /usr/local/tomcat/conf/

# Remove the default ROOT app (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy the built WAR to Tomcat and rename it to ROOT.war
COPY target/myweb.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
