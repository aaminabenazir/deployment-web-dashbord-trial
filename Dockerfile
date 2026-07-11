FROM python:3.9
WORKDIR /app

# Copy the requirements file first to install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Now copy the rest of your files
COPY . .

# Run the application
CMD ["python", "-m", "streamlit", "run", "app.py", "--server.port", "10000", "--server.address", "0.0.0.0"]