# syntax=docker/dockerfile:1 

# Docker file to build image of "Bad Banana" CLI game to run from a Python interpreter. 

# To build an image on your machine from Dockerfile if you've cloned the Github repo:
# >> docker image build -t badbanana.

# To pull the image from Docker Hub and run the container in one shot: 
# (assuming you have neither the container nor the image on your machine)
# >> docker container run -it --rm --name badbanana dunnesquared/badbanana

# Install Python.
# python:<version>-slim: contains only the most necessary packages to run Python.
# 3.8 pulls the latest minor version of 3.8.x, which should be 3.8.12.
# -buster: version 10 of Debian (Linux).
FROM python:3.8-slim-buster

# No requirements.txt file from which to pip install from, so just copy the source code
# to the working directory on Debian. 
WORKDIR /usr/src/app
COPY . . 

# Run script right away (no need for player to interact with shell).
CMD ["python", "./play.py"]
