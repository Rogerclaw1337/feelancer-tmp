FROM python:3.12.8-alpine
ENV PYTHONUNBUFFERED 1
RUN apk add --no-cache build-base libffi-dev
WORKDIR /feelancer
COPY pyproject.toml requirements.txt ./
COPY src ./src
RUN pip install --no-cache-dir -r requirements.txt .
ENTRYPOINT ["sh"]
