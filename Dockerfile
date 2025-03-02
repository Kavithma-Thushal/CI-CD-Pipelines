FROM public.ecr.aws/sam/build-python3.8:1.121.0-20240730174605
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
ENTRYPOINT python app.py