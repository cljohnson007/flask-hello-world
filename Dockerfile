FROM python:alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "-p", "8080"]

