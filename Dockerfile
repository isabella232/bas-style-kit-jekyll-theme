FROM antarctica/jekyll-image:0.2.0-alpine

MAINTAINER Felix Fennell <felnne@bas.ac.uk>

WORKDIR /usr/src/app

# Setup dependencies
RUN apk add --no-cache git
ADD Gemfile jekyll-theme-bas-style-kit.gemspec /usr/src/app/
RUN bundle install

# Setup `jekyll serve`
EXPOSE 9000
ENTRYPOINT []
CMD ["jekyll", "serve"]

# Ideally we wouldn't override the ENTRYPOINT defined by the 'antarctica/jekyll-image' image, however GitLab CI doesn't
# yet support using, or overriding, this property properlly yet. Once this is fixed the 'jekyll' element can be removed
# from the CMD for this image, and from the relevant script in '.gitlab-ci.yml'.
