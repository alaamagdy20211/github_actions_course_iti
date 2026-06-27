FROM python:3.12-slim

RUN useradd -m appuser

WORKDIR /app

COPY app ./app

RUN chown -R appuser:appuser /app

USER appuser

CMD ["python", "app/app.py"]
