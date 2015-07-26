FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential nodejs npm nodejs-legacy
RUN gem install compass

RUN mkdir /frontend

ADD . /frontend
WORKDIR /frontend

CMD ["npm","install"]
CMD ["./node_modules/ember-cli/bin/ember","server","--host","0.0.0.0","--port","80","--watcher","polling"]
