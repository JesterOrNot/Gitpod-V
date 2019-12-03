FROM gitpod/workspace-full

USER gitpod
RUN sudo mkdir -p /home/gitpod/.v && cd /home/gitpod/.v && sudo wget -c https://github.com/vlang/v/archive/0.1.23.zip && sudo unzip 0.1.23.zip && cd v-0.1.23 && sudo make
ENV PATH="$PATH:/home/gitpod/.v/v-0.1.23"
RUN sudo v symlink