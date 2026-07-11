FROM python:3.9
WORKDIR /app
COPY . .
# Use --no-cache-dir to ensure it fetches fresh packages
RUN pip install --no-cache-dir -r requirements.txt
# Use the full path to ensure it is found
CMD python -m streamlit run app.py --server.port 10000 --server.address 0.0.0.0