FROM ruby:2.6

ENV BUNDLER_VERSION=1.17.3
ENV BUNDLE_PATH=/usr/local/bundle
ENV BUNDLE_DISABLE_SHARED_GEMS=true

WORKDIR /srv/jekyll

RUN gem install bundler -v "$BUNDLER_VERSION"

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN chmod +x /srv/jekyll/docker-entrypoint.sh

EXPOSE 4000

ENTRYPOINT ["/srv/jekyll/docker-entrypoint.sh"]
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
