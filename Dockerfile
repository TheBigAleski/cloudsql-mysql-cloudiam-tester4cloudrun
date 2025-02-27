FROM python:3.6

EXPOSE 5000

ENV INSTANCE_CONNECTION_NAME=connection_name
ENV DB_IAM_USER=iam_user
ENV DB_NAME=db_name

WORKDIR /app

COPY requirements.txt /app
RUN pip install -r requirements.txt

COPY app.py /app
CMD python app.py