FROM python:3.9
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
# This line is the fix:
CMD ["streamlit", "run", "app.py", "--server.port=10000", "--server.address=0.0.0.0"]