FROM python:3.8.16-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /app

RUN pip install .

WORKDIR /data

ENTRYPOINT ["aclgen"]
