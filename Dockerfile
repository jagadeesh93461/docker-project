FROM tomcat:alpine

# Remove default tomcat static assets
RUN rm -rf /usr/share/tomcat/html/*

# Copy static files from a remote URL
copy healet-html .  /usr/share/tomcat/html/

EXPOSE 80

CMD ["tomcat", "-g", "daemon off;"]
