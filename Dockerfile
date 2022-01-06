FROM python:3.6
WORKDIR /opt/app
COPY . .
CMD ["python3", "main.py"]

