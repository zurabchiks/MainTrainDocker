FROM python:3.10

ENV APP HOME /app

WORKDIR $APP_HOME
COPY . .

COPY ./requirements.txt ./code/requirements.txt
RUN apt-get update
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080
CMD [“streamlit”, “run”, “app.py”]