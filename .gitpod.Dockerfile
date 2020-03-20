FROM gitpod/workspace-full

USER gitpod

WORKDIR /opt/vlang

RUN sudo wget -c https://github.com/vlang/v/releases/download/0.1.24/v_linux.zip \
    && sudo unzip v_linux.zip \
    && sudo chown gitpod /opt

ENV PATH=/opt/vlang:$PATH
