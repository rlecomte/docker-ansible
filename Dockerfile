FROM debian:jessie

RUN apt-get update && apt-get install wget python-pip && pip install ansible

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

