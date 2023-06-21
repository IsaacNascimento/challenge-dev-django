FROM python:3.10

ENV PYTHONNUBUFFRED=1

WORKDIR /code

COPY ./api/requirements.txt ./

RUN python -m venv venv
# RUN pip3 install -r requirements.txt
RUN /bin/bash -c "source venv/bin/activate && pip3 install -r requirements.txt"

# COPY . .
COPY ./api .
RUN /bin/bash -c "source venv/bin/activate && python3 -m pip install Django"

EXPOSE 8000

# CMD ["/bin/bash", "-c", "source venv/bin/activate && python3 manage.py runserver 0.0.0.0:8000"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]