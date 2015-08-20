FROM mclose/jdk8-oracle
MAINTAINER Matthew Close "https://github.com/mclose" 

RUN adduser --system --shell /bin/bash --gecos 'Tomcat user' --group --disabled-password --home /home/tomcat tomcat

RUN wget http://www.us.apache.org/dist/tomcat/tomcat-8/v8.0.24/bin/apache-tomcat-8.0.24.tar.gz -O /tmp/tomcat.tar.gz
RUN mkdir -p /usr/share/tomcat8
RUN tar xzvf /tmp/tomcat.tar.gz -C /usr/share/tomcat8
RUN rm /tmp/tomcat.tar.gz
RUN ln -s /usr/share/tomcat8/apache-tomcat-8.0.24 /usr/share/tomcat
RUN chown -R tomcat:tomcat /usr/share/tomcat8

#EXPOSE 8080
CMD /bin/su - tomcat -c /usr/share/tomcat/bin/startup.sh && tail -F /usr/share/tomcat/logs/catalina.out
