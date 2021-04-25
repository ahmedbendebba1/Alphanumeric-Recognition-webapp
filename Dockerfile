FROM python:3.7-slim-buster

# set working directory
ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt 

# for flask web server
EXPOSE 8080


# Default command to run the Gunicorn 
WORKDIR /app/app
CMD gunicorn --bind 0.0.0.0:8080 wsgi:app