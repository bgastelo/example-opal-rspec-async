FROM ruby:2.7.7

RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y chromium

RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["sh"]
