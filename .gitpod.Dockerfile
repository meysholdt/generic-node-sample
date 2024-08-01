FROM gitpod/workspace-node

USER gitpod

RUN sudo mkdir -p /pkg && sudo chown -R gitpod:gitpod /pkg
COPY package.json /pkg
COPY package-lock.json /pkg
RUN cd /pkg && npm install -g