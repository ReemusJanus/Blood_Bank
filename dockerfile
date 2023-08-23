
FROM python:3.8-slim


WORKDIR /app

COPY requirements.txt /app/

RUN pip install requirements.txt

COPY . /app/

EXPOSE 8000

ENV DB_HOST=localhost
ENV DB_PORT=5432
ENV DB_USER=myuser
ENV DB_PASSWORD=mypassword
ENV DB_NAME=blood_db

CMD ["python", "app.py"]