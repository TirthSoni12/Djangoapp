FROM python:3.10

RUN pip install -r requirements.txt

WORKDIR /myblog

COPY . .

CMD sh -c "python manage.py makemigrations && python manage.py migrate && python manage.py runserver 0.0.0.0:8000"

EXPOSE 8000