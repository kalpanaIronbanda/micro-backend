FROM python:3.11-alpine
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN sh dependencies.sh
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["/app/app.py"]