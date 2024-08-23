# Use the official Django image as a parent image
FROM django:onbuild

# Set environment variables
ENV PYTHONUNBUFFERED 1

# Upgrade pip and setuptools to ensure latest versions are used
RUN pip install --upgrade pip setuptools

# Add the current directory contents into the container
ADD . /usr/src/app

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 for the Django app
EXPOSE 8000

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
