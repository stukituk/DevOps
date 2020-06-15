FROM python:3
EXPOSE 5000
COPY . /app
WORKDIR /app
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip install flask
ENV FLASK_APP "js_example"
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0" ]
