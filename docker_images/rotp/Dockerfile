FROM ruby:alpine3.16

RUN gem install rotp

RUN mkdir /app

WORKDIR /app

COPY . .

CMD [ "ruby", "get_one_time_password.rb" ]