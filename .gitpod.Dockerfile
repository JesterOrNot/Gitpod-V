FROM gitpod/workspace-full

USER gitpod
RUN sudo mkdir -p /home/gitpod/.v \
    && cd /home/gitpod/.v \
    && sudo wget -c https://github.com/vlang/v/releases/download/0.1.24/v_linux.zip \
    && sudo unzip v_linux.zip -d v_linux \
    && cd v_linux \
    && sudo make \
    && mkdir bin \
    && mv v bin \
    && cd bin \
    && echo "export PATH=$PATH:$PWD" >>~/.bashrc
