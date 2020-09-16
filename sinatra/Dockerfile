FROM ruby:2.7.1-slim-buster

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends build-essential \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

ADD Gemfile .

RUN bundle config set path "vendor/bundle" \
    && bundle install

EXPOSE 4567
CMD ["bundle", "exec", "ruby", "src/app.rb", "-o", "0.0.0.0", "-p", "4567"]
