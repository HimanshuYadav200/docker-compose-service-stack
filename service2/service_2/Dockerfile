FROM python:3.11-slim
WORKDIR /app
RUN apt-get update \
 && apt-get install -y curl \
 && rm -rf /var/lib/apt/lists/* \
 && pip install --no-cache-dir flask
COPY app.py .
ENV FLASK_APP=app.py
EXPOSE 8002
HEALTHCHECK --interval=10s --timeout=3s CMD curl -f http://localhost:8002/ping || exit 1
CMD ["flask", "run", "--host=0.0.0.0", "--port=8002"]
