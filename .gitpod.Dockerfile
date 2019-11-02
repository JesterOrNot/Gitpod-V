FROM gitpod/workspace-full

USER root
RUN mkdir -p /home/gitpod/.v && cd /home/gitpod/.v && wget -c https://github.com/vlang/v/releases/download/0.1.21/v_linux.zip && unzip v_linux.zip
ENV PATH="$PATH:/home/gitpod/.v/v"
