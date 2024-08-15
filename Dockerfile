# Use an official Python runtime as a parent image
FROM python:3.12.1-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app/

# Install any necessary dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app/

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define environment variable
ENV DJANGO_SETTINGS_MODULE=your_project_name.settings

# Run the Django app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
