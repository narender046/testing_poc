FROM ubuntu:lates

RUN apt-get update
RUN apt-get install python3.9 -y 

WORKDIR /usr/app/src

COPY print.py ./

CMD ["python3", "./print.py"]
