# syntax=docker/dockerfile:1

FROM puneetkhatri2000/flask-app:1.0

EXPOSE 5000

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

CMD ["flask", "run", "--host=0.0.0.0"]