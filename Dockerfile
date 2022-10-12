FROM public.ecr.aws/lambda/python:3.7
COPY . .
RUN pip install keras &&\
    pip install tensorflow &&\
    pip install pandas &&\
    pip install scipy &&\
    pip install matplotlib &&\
    pip install fs-s3fs &&\
    pip install zipfile36 &&\
    pip install tempfile2
CMD [ "machine_learning.image_class" ]
