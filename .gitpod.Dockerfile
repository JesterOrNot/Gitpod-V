FROM gitpod/workspace-full

USER gitpod

WORKDIR /opt/vlang

# Install V
RUN sudo git clone https://github.com/vlang/v . \
    && sudo make \
    && sudo ./v symlink
