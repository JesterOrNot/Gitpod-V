FROM gitpod/workspace-full

USER gitpod

WORKDIR /opt/vlang

RUN sudo wget -c https://github.com/vlang/v/releases/download/0.1.24/v_linux.zip \
    && sudo unzip v_linux.zip -d v_linux \
    && cd v_linux \
    && sudo mkdir bin \
    && sudo mv v bin

ENV PATH=/opt/v_linux/bin:$PATH

# # Install V
# RUN sudo git clone https://github.com/vlang/v . \
#     && sudo make \
#     && sudo ./v symlink
