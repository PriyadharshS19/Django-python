FROM ubuntu

WORKDIR /app

COPY requirements.txt /app
COPY projects /app

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirements.txt && \
    cd projects/telusko


ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]