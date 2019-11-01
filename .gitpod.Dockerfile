FROM gitpod/workspace-full

USER root
RUN mkdir -p /home/gitpod/.v && cd /home/gitpod/.v && git clone https://github.com/vlang/v && cd v && make
ENV PATH="$PATH:/home/gitpod/.v/v"
