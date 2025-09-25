# Use AWS public Python image (slim)
FROM public.ecr.aws/docker/library/python:3.11-slim

# Set working directory
WORKDIR /app

# Copy application code
COPY . /app

# Upgrade pip and install dependencies
RUN python3 -m pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Expose port (if your app runs on 5000, change if different)
EXPOSE 5000

# Run the Python app
CMD ["python3", "app.py"]
