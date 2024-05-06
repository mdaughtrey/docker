FROM debian:latest

USER root
RUN apt-get update
RUN apt-get -y install python3 jupyter-notebook python3-matplotlib python3-numpy python3-opencv python3-pandas
#RUN apt -y install postgresql-server-dev-15
#RUN cd /tmp && \
#git clone --branch v0.7.0 https://github.com/pgvector/pgvector.git && \
#cd pgvector && \
#make && \
#make install 
    
#RUN mkdir -p /root/.jupyter

#COPY jupyter_notebook_config.json  /root/.jupyter/jupyter_notebook_config.json
