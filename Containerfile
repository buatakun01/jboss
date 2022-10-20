# dockerfile to build image for JBoss EAP 7.1

#start from eap71-openshift
FROM quay.io/bagja_wicaksana/do180-eap64-openshift 

# file author / maintainer
MAINTAINER "Bagja Wicaksana" "bagja.wicaksana@gmail.com"

# Copy war to deployments folder
#COPY app.war $JBOSS_HOME/standalone/deployments/

# User root to modify war owners
USER root

# Modify owners war
#RUN chown jboss:jboss $JBOSS_HOME/standalone/deployments/app.war

# Important, use jboss user to run image
USER jboss