FROM python

COPY ./dependencies /app/dependencies

WORKDIR /app

RUN pip install -r dependencies

COPY ./flask_web/ /app
COPY ./integration-tests/ /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
