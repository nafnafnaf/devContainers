#Dockerfile for Linux 
#Run BuildandRun afterwoards

FROM python:3.12-bookworm

# Set working directory
WORKDIR /workspace

# Install Django
RUN pip install --upgrade pip && pip install django

# Copy local files (adjust if needed)
COPY . .

# Start Django dev server
CMD ["bash", "-c", "python manage.py runserver 0.0.0.0:8000"]
