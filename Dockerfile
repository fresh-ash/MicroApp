FROM nikolaik/python-nodejs:latest

RUN pip install pipenv \
    && npm install -g nodemon

WORKDIR /opt/app
COPY . .
RUN pipenv install --system --deploy
