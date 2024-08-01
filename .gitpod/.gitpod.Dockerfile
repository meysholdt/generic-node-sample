FROM gitpod/workspace-full

USER gitpod

RUN sudo mkdir -p /pkg
RUN sudo chown -R gitpod:gitpod /pkg

COPY package.json /pkg

RUN cd /pkg && npm install  --legacy-peer-deps

