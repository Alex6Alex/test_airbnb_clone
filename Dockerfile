FROM ruby:3.2.0

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq \
  && curl -sL https://deb.nodesource.com/setup_19.x | bash \
  && apt-get install nodejs \
  && apt-get install -y yarn

RUN mkdir /app
WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install --jobs 5

COPY . .

COPY docker.sh /usr/bin
RUN chmod +x /usr/bin/docker.sh

CMD docker.sh
