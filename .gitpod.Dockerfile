FROM gitpod/workspace-full

USER gitpod
RUN sudo mkdir -p /home/gitpod/.v \
    && cd /home/gitpod/.v \
    && sudo wget -c https://github.com/JesterOrNot/v/archive/0.1.23.1.zip \
    && sudo unzip 0.1.23.1.zip \
    && cd v-0.1.23.1 \
    && sudo make \
    && mkdir bin \
    && mv v bin \
    && cd bin \
    && echo "export PATH=$PATH:$PWD" >>~/.bashrc
