FROM python:3.8.5-slim-buster
COPY . /src
RUN pip install -r /src/requirements.txt
WORKDIR /src
ENTRYPOINT ["bash", "./python.sh"]
