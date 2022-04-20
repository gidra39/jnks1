FROM python: 3.8-slim-buster

WORKDIR /usr/flask
COPY app.py app.py
COPY templates/index.html templates/index.html
RUN pip install flask
CMD ["python3","app.py","run", "--host =0.0.0.0"]
