FROM python:latest

ENV uwsgi_port=8080

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install -r requirements.txt

EXPOSE 8080

ADD src .

CMD ["./start.sh"]
