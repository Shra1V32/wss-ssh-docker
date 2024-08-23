# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
#RUN pip install --no-cache-dir -r requirements.txt

# Install OpenSSH server
RUN apt-get update && apt-get install -y openssh-server --no-install-recommends

# chmod
RUN chmod +x setup-ssh.sh && ./setup-ssh.sh

# Make port 8080 available to the world outside this container
EXPOSE 8087

# Run app.py when the container launches
CMD ["python", "main.py", "-p", "8087"]
