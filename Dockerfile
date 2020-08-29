FROM ruby:2.6.5-alpine as builder

RUN apk --update --no-cache add shadow sudo busybox-suid sqlite-dev postgresql-dev postgresql tzdata alpine-sdk

WORKDIR /rails

COPY Gemfile Gemfile.lock ./

RUN gem install bundler --version 1.17.2 && \
    bundle install --path vendor/bundle && \
    find vendor/bundle/ruby -path '*/gems/*/ext/*/Makefile' -exec dirname {} \; 

FROM ruby:2.6.5-alpine

# パッケージ全体を軽量化して、railsが起動する最低限のものにする
RUN apk --update --no-cache add shadow sudo busybox-suid execline tzdata sqlite-dev postgresql-dev postgresql && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del --purge tzdata

WORKDIR /rails

# gemはbuilderからコピーしてくる
COPY --from=builder /rails/vendor/bundle vendor/bundle
COPY --from=builder /usr/local/bundle /usr/local/bundle
COPY . /rails

EXPOSE 3000
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]