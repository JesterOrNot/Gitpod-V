FROM gitpod/workspace-full

USER gitpod

WORKDIR /opt

# Install V
RUN git clone https://github.com/vlang/v . \
    && sudo make \
    && sudo ./v symlink
