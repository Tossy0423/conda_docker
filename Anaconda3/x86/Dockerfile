FROM ubuntu:20.04


ENV DEBIAN_FRONTEND=noninteractive
ENV TZ Asia/Tokyo




## Reference:
## [Installing on Linux](https://docs.anaconda.com/anaconda/install/linux/)
##      Prepare
RUN apt update -y && \ 
    apt install -y --no-install-recommends \
    mesa-utils \
    x11-apps \
    git \
    vim-gtk \
    cmake \
    build-essential \
    curl \
    wget \
    gnupg2 \
    lsb-release \
    libgl1-mesa-glx \ 
    libegl1-mesa \
    libxrandr2 \
    libxrandr2 \
    libxss1 \
    libxcursor1 \
    libxcomposite1 \
    libasound2 \
    libxi6 \
    libxtst6 \
    && rm -rf /var/lib/apt/lists/*




##############################
##    Install Anaconda3     ##
##############################
## Reference:
##  [Installing on Linux](https://docs.anaconda.com/anaconda/install/linux/)
##  [Installing in silent mode](https://docs.anaconda.com/anaconda/install/silent-mode/)
SHELL ["/bin/bash", "-c"] 
WORKDIR /root
RUN wget --no-check-certificate https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
RUN bash ./Anaconda3-2021.11-Linux-x86_64.sh -b -p /root/anaconda3
RUN echo "export PATH=/root/anaconda3/bin:$PATH" >> ~/.bashrc && source ~/.bashrc
RUN /root/anaconda3/bin/conda info
RUN /root/anaconda3/bin/conda upgrade --all 
RUN /root/anaconda3/bin/conda clean --packages
RUN rm /root/Anaconda3-2021.11-Linux-x86_64.sh
RUN /root/anaconda3/bin/conda init bash
