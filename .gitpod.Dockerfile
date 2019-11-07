FROM gitpod/workspace-full

USER root
RUN git clone https://github.com/JesterOrNot/Gitpod-V/tree/test.git && cd Gitpod-V
# ENV PATH="$PATH:/home/gitpod/.v/v"
