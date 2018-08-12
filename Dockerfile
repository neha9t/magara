FROM    ruby:2.5-alpine
WORKDIR "/usr/src/app"

ARG RAILS_MASTER_KEY
ENV RAILS_ENV=production \
    RAILS_SERVE_STATIC_FILES=true \
    RAILS_MASTER_KEY=$RAILS_MASTER_KEY

COPY . .

RUN apk add --no-cache \
            build-base tzdata postgresql-dev \
            nodejs yarn \
    && bundle --no-color \
              --jobs $( grep -c processor /proc/cpuinfo ) \
              --without development test \
              --path vendor/bundle \
    && bundle exec rails assets:precompile \
    && apk del build-base yarn

EXPOSE 3000
VOLUME ["/usr/src/app/log"]
CMD    ["bundle", "exec", "rails", "server"]
