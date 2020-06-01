FROM bitriseio/docker-android:latest

# ------------------------------------------------------
# --- Install required tools

RUN apt-get update -qq

# ------------------------------------------------------
# --- Cordova CLI

RUN npm install -g generator-ngx-rocket

# ------------------------------------------------------
# --- Install Ant

RUN apt-get install -y ant
RUN ant -version

# ------------------------------------------------------
# --- Cleanup and rev num

# Cleaning
RUN apt-get clean
