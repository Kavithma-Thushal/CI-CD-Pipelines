# Use the official Python image from the Docker Hub
FROM public.ecr.aws/sam/build-python3.8:1.121.0-20240730174605

# Copy requirements file
COPY requirements.txt .

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . .

# Command to run the Flask app
CMD ["python", "app.py"]