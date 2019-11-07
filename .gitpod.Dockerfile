FROM gitpod/workspace-full

USER root
RUN git clone https://github.com/JesterOrNot/Gitpod-V.git && setup.sh
# ENV PATH="$PATH:/home/gitpod/.v/v"
