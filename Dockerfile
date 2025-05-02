FROM tomcat:9.0.84-jdk17-temurin

WORKDIR /usr/local/tomcat

# Optional: Replace Tomcat's default users if you have a custom config
COPY tomcat-users.xml conf/

# Remove default ROOT app
RUN rm -rf webapps/ROOT

# Copy your WAR file into Tomcat as ROOT.war
COPY target/myweb-8.6.9.war webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
