FROM python:3.13.0a1-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . /app

RUN pip install .

WORKDIR /data

ENTRYPOINT ["aclgen"]
