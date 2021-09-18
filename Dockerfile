FROM ruby:2.7-alpine3.13

WORKDIR /usr/src/app/

COPY src/ /usr/src/app/
RUN gem install webrick

EXPOSE 9080

CMD ["ruby", "details.rb", "9080"]
