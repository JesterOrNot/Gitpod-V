FROM gitpod/workspace-full

USER root
RUN mkdir -p /home/gitpod/.v && cd /home/gitpod/.v && wget -c https://github.com/vlang/v/archive/0.1.23.zip && unzip 0.1.23.zip
ENV PATH="$PATH:/home/gitpod/.v/v"
RUN v symlink