FROM python:3.10.0-slim-buster
RUN useradd -ms /bin/bash user
USER user
WORKDIR /home/user
ENV PATH="/home/user/.local/bin:${PATH}"
COPY . /home/user
RUN pip3 install --upgrade pip
RUN pip3 install -r /home/user/requirements.txt
ENTRYPOINT ["bash", "./python.sh"]
