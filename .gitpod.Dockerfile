FROM gitpod/workspace-full

USER gitpod

WORKDIR /opt/vlang

ENV VLANG_VERSION=0.1.24

RUN sudo wget -c "https://github.com/vlang/v/releases/download/$VLANG_VERSION/v_linux.zip" \
    && sudo unzip v_linux.zip \
    && sudo chown -hR gitpod /opt \
    && rm -rf *.zip *.md LICENSE doc examples tutorials

ENV PATH=/opt/vlang:$PATH
