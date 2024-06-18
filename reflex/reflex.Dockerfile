FROM debian:latest
USER root

ARG CONDABIN=/root/miniconda3/bin

RUN apt-get update
RUN apt-get -y install vim python3 python3-pip git wget unzip curl
RUN apt-get update
RUN mkdir /root/miniconda3 \
&& cd /root/miniconda3 \
&& wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh \
&& bash ./miniconda.sh -b -u -p ~/miniconda3 \
&& rm miniconda.sh
ENV PATH=${CONDABIN}:${PATH}
RUN conda init bash
RUN conda update -y conda
RUN conda create -y --name reflex
RUN conda run --no-capture-output -n reflex pip install reflex watchfiles==0.21.0

#RUN pip install reflex poetry

#RUN apt-get -y install gcc-12-base

#ARG USER=mattd
#RUN groupadd -g 1000 ${USER}
#RUN useradd -r -u 1000 -g 1000 ${USER}
#RUN usermod -a -G dialout mattd
#RUN mkdir -p /home/${USER}/
#RUN chown -R ${USER}:${USER} /home/${USER}
#USER ${USER}
#RUN ln -s /personal-projects/bin/vimrc ~/.vimrc

#RUN cd /home/${USER} && \
#    git clone https://github.com/schoolpost/PyDNG && \
#    cd PyDNG && \
#    python3 -m pip install ./src/.

