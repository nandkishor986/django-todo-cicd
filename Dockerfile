FROM python:3
RUN apt-get update -y
RUN pip install django==3.2
COPY . . 
RUN python manage.py migrate
ENTRYPOINT ["python", "manage.py", "runserver", "0.0.0.0:8000"]
