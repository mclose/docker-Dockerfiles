FROM mclose/jdk8-oracle
MAINTAINER Matthew Close "https://github.com/mclose" 

ENV TOMCAT_VERSION=8.0.26

RUN adduser --system --shell /bin/bash --gecos 'Tomcat user' --group --disabled-password --home /home/tomcat tomcat

RUN wget http://archive.apache.org/dist/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz -O /tmp/tomcat.tar.gz
RUN mkdir -p /usr/share/tomcat8
RUN tar xzvf /tmp/tomcat.tar.gz -C /usr/share/tomcat8
RUN rm /tmp/tomcat.tar.gz
RUN ln -s /usr/share/tomcat8/apache-tomcat-${TOMCAT_VERSION} /usr/share/tomcat
RUN chown -R tomcat:tomcat /usr/share/tomcat8

# Only add this file to non-production firewalled hosts. This configuration is for demo
# purposes only.
# ADD ./tomcat-users.xml /usr/share/tomcat8/apache-tomcat-${TOMCAT_VERSION}/conf/tomcat-users.xml

CMD /bin/su - tomcat -c /usr/share/tomcat/bin/startup.sh && tail -F /usr/share/tomcat/logs/catalina.out
