FROM python:3.10-slim

WORKDIR /usr/src/app
RUN mkdir -p /usr/src/app/requests
COPY scrapper.py .
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080

CMD ["python", "./scrapper.py"]
