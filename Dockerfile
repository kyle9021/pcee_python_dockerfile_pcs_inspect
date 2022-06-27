FROM python:3.8-slim-bullseye
RUN useradd -ms /bin/bash user
USER user
WORKDIR /home/user
ENV PATH="/home/user/.local/bin:${PATH}"
COPY . /home/user
RUN pip3 install --no-cache-dir --upgrade pip
RUN pip3 install --no-cache-dir -r /home/user/requirements.txt
ENTRYPOINT ["bash", "./python.sh"]
