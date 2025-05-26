FROM python:3.13.3-slim

WORKDIR /app
COPY ./src /app/src
COPY ./pyproject.toml /app/pyproject.toml
# also possible: COPY pyprject.toml .
# copy from the local directory to the container (from left to right)

RUN python -m pip install -e .
# install dependencies 

ENTRYPOINT ["dev2il-devops-app"]
