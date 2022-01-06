FROM python:3.8
RUN pip install pipenv
WORKDIR /opt/app
COPY . .
RUN pipenv install --system --deploy

