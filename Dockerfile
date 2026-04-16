FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install django channels daphne

CMD ["daphne", "chat_application.asgi:application", "-b", "0.0.0.0", "-p", "8000"]