FROM gitpod/workspace-full

USER gitpod

# Install V
RUN git clone https://github.com/vlang/v . \
    && sudo make \
    && sudo ./v symlink
