FROM gitpod/workspace-node

USER gitpod

COPY --chown=gitpod:gitpod package.json /package-original.json
COPY --chown=gitpod:gitpod package-lock.json /package-lock.json

RUN sudo touch /package.json && \
    sudo mkdir /node_modules && \
    sudo chown gitpod:gitpod /node_modules /package.json && \
    jq '.workspaces |= . + ["/workspace/generic-node-sample"]' /package-original.json > /package.json
    
RUN cd / && npm install