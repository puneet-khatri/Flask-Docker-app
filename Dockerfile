# syntax=docker/dockerfile:1

FROM python:3.10

EXPOSE 5000

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

CMD ["flask", "run", "--host=0.0.0.0"]