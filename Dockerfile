# Use Python Alpine base image
FROM python:alpine

# Set working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copy the Flask application code
COPY . .

# Expose port 5000
EXPOSE 5000

# Start the Flask application
CMD ["python", "app.py"]
