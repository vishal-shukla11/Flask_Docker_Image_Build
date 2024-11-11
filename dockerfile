# Use a base image with Python
FROM python:latest

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application code
COPY . .

# Expose port 5000 for Flask
EXPOSE 5050

# Set the command to run the Flask app
CMD ["python", "app.py"]
