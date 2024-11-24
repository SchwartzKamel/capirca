FROM python:3.14.0a2-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /app

RUN pip install .

WORKDIR /data

ENTRYPOINT ["aclgen"]
