FROM ruby:2
WORKDIR /code
ADD Gemfile /code/Gemfile
Add Gemfile.lock /code/Gemfile.lock
RUN bundle install
ADD jekyll /code
