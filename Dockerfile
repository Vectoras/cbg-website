FROM node:24
WORKDIR /app
# pre-create paths that get mounted as volumes, so an empty volume mounted
# there inherits node ownership instead of Docker's root-owned default
RUN mkdir -p /app/node_modules /home/node/.vscode-server \
  && chown -R node:node /app/node_modules /home/node/.vscode-server
# run as a non-root user by default, for every invocation (docker run, exec,
# compose, dev containers) — not just the ones that know to ask for it
USER node
ENV NODE_ENV=development
EXPOSE 5173 6006
CMD [ "sleep", "infinity" ]
