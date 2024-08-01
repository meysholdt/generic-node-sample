FROM gitpod/workspace-node

USER gitpod

RUN sudo mkdir -p /pkg && sudo chown -R gitpod:gitpod /pkg
COPY --chown=gitpod:gitpod package.json /pkg
COPY --chown=gitpod:gitpod package-lock.json /pkg
RUN cd /pkg && npm install && sudo mv node_modules /