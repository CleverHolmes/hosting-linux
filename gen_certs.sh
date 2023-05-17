#!/bin/bash
systemctl stop nginx
certbot certonly -d slowrug.io -d www.slowrug.io \
		-d api.slowrug.io -d api.grave.slowrug.io \
		-d ws.slowrug.io -d ws.grave.slowrug.io \
		-d api.slowrug.io -d api.infinite.slowrug.io \
		-d ws.slowrug.io -d ws.infinite.slowrug.io
nginx -t
systemctl start nginx
