FROM python:3.10

ENV PYTHONUNBUFFERED=1

WORKDIR /code

COPY requirements.txt /code

RUN python3 -m venv venv

RUN /bin/bash -c "source venv/bin/activate && pip3 install -r requirements.txt"

COPY .  /code/
RUN /bin/bash -c "source venv/bin/activate && python3 -m pip install Django"

EXPOSE 8000

CMD ["/bin/bash", "-c", "source venv/bin/activate && python3 manage.py runserver 0.0.0.0:8000"]



