FROM python:3.8-alpine
RUN pip install pipenv
WORKDIR /opt/app
COPY . .
RUN pipenv install --system --deploy
CMD ["python3", "main.py"]
