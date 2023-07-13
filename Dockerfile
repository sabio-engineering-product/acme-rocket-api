FROM ruby:3.1.3-slim-bullseye

ARG BUNDLER_VERSION
ARG BUNDLE_GEM__FURY__IO

RUN apt-get update -y && \
  apt-get install -y --no-install-recommends \
    shared-mime-info=2.0-1 \
    postgresql-common=225 \
    postgresql-server-dev-all=225 \
    postgresql-client-common=225 \
    build-essential && \
  rm -rf /var/lib/apt/lists/* && apt-get autoremove && apt-get clean

RUN gem install bundler -v "${BUNDLER_VERSION}"

ENV APP_HOME /app
RUN mkdir ${APP_HOME}
WORKDIR ${APP_HOME}

ADD ./Gemfile ./Gemfile.lock ${APP_HOME}/

RUN bundle "_${BUNDLER_VERSION}_" config set deployment true && \
  bundle "_${BUNDLER_VERSION}_" config set without development

RUN bundle "_${BUNDLER_VERSION}_" install

ADD . ${APP_HOME}
RUN mv ${APP_HOME}/config/database.docker.yml ${APP_HOME}/config/database.yml

CMD ./entrypoint.sh