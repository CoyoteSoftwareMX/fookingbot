# Use a base image with Python pre-installed
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


# Copy the Flask application code into the container
COPY . .

# Expose the port your Flask application is running on
EXPOSE 5000

# Set the environment variables (if any)
ENV FLASK_APP=app.py

# Run the Flask application
CMD ["flask", "--debug", "run", "--host=0.0.0.0"]
