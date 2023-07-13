# Use a base image with the desired runtime and dependencies
FROM python:3.9-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the application files to the container
COPY app.py .

# Install any required dependencies
RUN pip install flask

# Set the environment variable for Flask
ENV FLASK_APP=app.py

# Expose port 80 for incoming connections
EXPOSE 80

# Set the command to run when the container starts
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]
