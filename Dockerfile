FROM python:3.7-slim

COPY ./requirements.txt /app/
COPY ./app.py  /app/
COPY ./templates /app/templates  
## for foder it is better to have the as otherwise only the containt of the folder may be copied

WORKDIR /app

RUN pip install -r requirements.txt


EXPOSE 8081 

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

