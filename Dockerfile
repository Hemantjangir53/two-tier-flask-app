# Getting an official Python runtime as the base image from dockerHUb
FROM python:3.9-slim

# Set the working directory in the container where all code will be kept
WORKDIR /app

# install required packages for system
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y gcc default-libmysqlclient-dev pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Copy the requirements file into the container(system -> your container)
COPY requirements.txt .

# Install app dependencies and required library or to make a container 
RUN pip install mysqlclient
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code (system -> your container)
COPY . .

# Specify the command to run your application or to run a container 
CMD ["python", "app.py"]
