FROM docker-registry.data.bas.ac.uk/web-apps/infrastructure/bdi/jekyll-image:0.3.0-alpine

MAINTAINER Felix Fennell <felnne@bas.ac.uk>

WORKDIR /usr/src/app

# Setup dependencies
ADD Gemfile jekyll-theme-bas-style-kit.gemspec /usr/src/app/
RUN apk add --no-cache build-base libffi git && \
    bundle install && \
    apk del build-base

# Setup runtime
CMD ["serve", "--config", "_config-internal.yml"]
