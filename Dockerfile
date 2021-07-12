#Create a ubuntu base image with python 3 installed.
FROM python:3.8-alpine

#Set the working directory
WORKDIR /usr/src/app

#copy all the files
COPY . .

#Install the dependencies
RUN apt-get -y update
RUN sudo pip3 install -r requirements.txt

#Expose the required port
EXPOSE 5000

#Run the command
CMD [“python3”, “./app.py”]