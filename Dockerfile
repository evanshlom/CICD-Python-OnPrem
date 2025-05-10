FROM python:3.10-slim
WORKDIR /src
COPY src/main.py .
CMD ["python", "main.py"]