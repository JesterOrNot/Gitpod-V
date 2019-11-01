FROM gitpod/workspace-full

USER root

RUN mv v /usr/bin | unzip v_linux.zip | wget -c https://github.com/vlang/v/releases/download/0.1.21/v_linux.zip