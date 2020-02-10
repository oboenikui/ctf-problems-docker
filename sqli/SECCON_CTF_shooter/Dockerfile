FROM ruby:2.7-slim

RUN apt-get update -qq && \
  apt-get install -y build-essential default-mysql-client default-libmysqlclient-dev nodejs yarnpkg

RUN mkdir /app
WORKDIR /app
COPY ./webapp /app
COPY ./tmp /app

ENV PATH $PATH:/app/bin

RUN yarn install && \
  bundle install && \
  bundle exec rails assets:precompile

VOLUME /app/public
VOLUME /app/tmp

COPY ./entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "bundle", "exec", "puma" ]