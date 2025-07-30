FROM python:3.9-alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY helloworld.py .

EXPOSE 8080

CMD ["python", "helloworld.py"]