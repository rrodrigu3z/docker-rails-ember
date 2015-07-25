FROM node

RUN mkdir /frontend

ADD . /frontend
WORKDIR /frontend
CMD ["npm","install"]
CMD ["./node_modules/ember-cli/bin/ember","server","--host","0.0.0.0","--port","80","--watcher","polling"]
