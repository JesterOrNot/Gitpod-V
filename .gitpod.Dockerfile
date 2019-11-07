FROM gitpod/workspace-full

USER root
RUN wget -c https://raw.githubusercontent.com/JesterOrNot/Gitpod-V/test/setup.sh && bash setup.sh
# ENV PATH="$PATH:/home/gitpod/.v/v"
