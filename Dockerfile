FROM python:3.8
RUN pip install pipenv
RUN pipenv install --system --deploy
WORKDIR /opt/app
COPY . .
CMD ["python3", "main.py"]
