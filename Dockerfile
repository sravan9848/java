# Use the official Tomcat 9 image as the base image
FROM tomcat

# Remove the default Tomcat webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Optionally, you can copy your own WAR files or web applications into the Tomcat webapps directory
# Example:
COPY target/sample-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container launches
CMD ["catalina.sh", "run"]

