FROM gitpod/workspace-full

USER gitpod

# Install V
RUN sudo mkdir -p /home/gitpod/.v \
    && cd /home/gitpod/.v \
    && git clone https://github.com/vlang/v . \
    && make \
    && sudo ./v symlink
