FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/lokeshnslk/technical-task.git .
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8085

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8085"]