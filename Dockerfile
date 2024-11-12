# Use a stable base image
FROM python:3.11-slim

# Set work directory
WORKDIR /app

# Install dependencies for psycopg2 and system utilities
RUN apt-get update && \
    apt-get install --no-install-recommends -y dnsutils libpq-dev python3-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Upgrade pip and install Python dependencies
RUN python -m pip install --no-cache-dir pip==22.0.4

# Copy requirements.txt and install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . /app/

# Expose port for the application
EXPOSE 8000

# Run database migrations
RUN python3 /app/manage.py migrate

# Set the working directory to the project folder if needed
WORKDIR /app/pygoat/

# Start the Django application using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--workers", "6", "pygoat.wsgi"]
