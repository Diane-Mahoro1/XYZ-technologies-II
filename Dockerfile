FROM tomcat:9.0-jdk11-openjdk
LABEL maintainer="diane@xyz.com"
# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*
# Copy WAR file into Tomcat
COPY target/XYZtechnologies-1.0.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
