FROM python:3.8

WORKDIR /app/

COPY src/ .

EXPOSE 65432

CMD [ "python", "./server.py" ]
