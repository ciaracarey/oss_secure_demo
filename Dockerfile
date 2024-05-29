# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /flask_app

# Copy the current directory contents into the container at /app
COPY flask_app/app.py /flask_app
COPY flask_app/requirements.txt /flask_app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable
#ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]
