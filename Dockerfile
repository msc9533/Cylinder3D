FROM scrin/dev-spconv:latest

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get -y install \
    wget \
    nano \
    vim \
    python3-pip \
    zip \
    git \
    libsm6 \
    libxext6 \
    libxrender-dev \
    build-essential \
    tar \
  && rm -rf /var/lib/apt/lists/*
RUN python3 -m pip install --upgrade pip
RUN pip install matplotlib \
    pip install numpy \
    pip install PyYAML \
    pip install Cython \
    pip install notebook \
    pip install nuscenes-devkit \
    pip install --no-cache-dir torch-scatter -f https://pytorch-geometric.com/whl/torch-1.7.0+cu110.html \
    pip install torch-scatter==2.0.7

RUN pip install numba \
    pip install strictyaml

WORKDIR /notebooks
