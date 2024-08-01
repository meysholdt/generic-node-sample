FROM gitpod/workspace-node

USER gitpod

RUN sudo mkdir -p /pkg && sudo chown -R gitpod:gitpod /pkg
COPY package.json /pkg
RUN cd /pkg && npm install -g