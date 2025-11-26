FROM python:3.9-slim

WORKDIR /app

COPY test_app.py .
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
#TESTANDO DE NOVO BB
COPY . .

EXPOSE 1313

CMD ["python", "app.py"]
