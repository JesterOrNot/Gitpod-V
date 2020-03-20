FROM gitpod/workspace-full

USER gitpod

# Install V
RUN sudo mkdir -p /home/gitpod/.v \
    && cd /home/gitpod/.v \
    && sudo git clone https://github.com/vlang/v . \
    && sudo make \
    && sudo ./v symlink
