FROM     python:alpine3.17
LABEL    Creator="Ewa" Application-name="Online website" version="V.1.0.0"
WORKDIR  /code
RUN	apk add --no-cache gcc musl-dev linux-headers
COPY	requirements.txt requirements.txt
RUN	pip install -r requirements.txt
ENV	FLASK_APP=app.py
ENV	FLASK_RUN_HOST=0.0.0.0
EXPOSE  5000
COPY	. .
CMD	["flask", "run"]
#comment updated
