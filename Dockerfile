FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential nodejs npm nodejs-legacy libpq-dev
RUN npm install -g phantomjs

RUN mkdir /slicktime

WORKDIR /tmp
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

ADD . /slicktime
WORKDIR /slicktime
RUN bundle exec rake assets:precompile --trace
CMD ["rails","server","-b","0.0.0.0"]
