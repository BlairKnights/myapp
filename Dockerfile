FROM python:3.11-slim-buster
WORKDIR /project/
COPY . .
RUN py manage.py migrate
EXPOSE 8000
CMD ["python", "manage.py", "runserver"]
