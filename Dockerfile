# Use a stable Tomcat base image
FROM tomcat:8.0.20-jre8

# Copy the user config file
COPY tomcat-users.xml /usr/local/tomcat/conf/

# Remove the default ROOT app (optional, for cleanliness)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file and rename it as ROOT.war if you want it to deploy at /
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat's default port
EXPOSE 8080
