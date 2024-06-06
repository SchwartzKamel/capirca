FROM python:3.11.8-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /app

RUN pip install .

WORKDIR /data

ENTRYPOINT ["aclgen"]
