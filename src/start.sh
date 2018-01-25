#!/usr/bin/env bash


cd /usr/src/app

uwsgi --http-socket 0.0.0.0:${uwsgi_port} --wsgi-file app.py --callable api
