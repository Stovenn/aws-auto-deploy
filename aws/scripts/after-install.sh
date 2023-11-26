#!/bin/bash
set -xe


# Copy file from S3 bucket to tomcat webapp folder
aws s3 cp s3://codedeploystack-webappdeploymentbucket-1xzosdunrf13p/autodeploy /usr/local/bin/autodeploy

# Create service

# Ensure the ownership permissions are correct.
# chown -R tomcat:tomcat /usr/local/webapps