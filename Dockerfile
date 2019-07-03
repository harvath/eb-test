FROM ruby:2.6
COPY . /app
WORKDIR /app
RUN gem install bundler
RUN bundle install --path=vendor/bundle
EXPOSE 4567
CMD ["bundle", "exec", "app.rb"]
