FROM continuumio/miniconda3

WORKDIR /src/pyHPG_utils

COPY environment.yml /src/pyHPG_utils/

RUN conda install -c conda-forge gcc python=3.11 \
    && conda env update -n base -f environment.yml

COPY . /src/pyHPG_utils

RUN pip install --no-deps -e .
