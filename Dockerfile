# Use the official Python image as a parent image
FROM python:3.9-slim

# set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container /app folder
COPY . /

# Install required packages specified in requirements.txt file
RUN pip install -r requirements.txt

# Made port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run application app.py when the container launches
CMD ["python", "app.py"]
