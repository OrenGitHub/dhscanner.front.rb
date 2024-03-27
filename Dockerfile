FROM ruby
RUN apt-get update
RUN apt-get install vim -y
RUN gem install rails
RUN rails new translator --api --skip-action-mailer --skip-active-record
WORKDIR translator
COPY routes.rb config
COPY translator_controller.rb app/controllers
EXPOSE 3000
# CMD [ "rails", "server", "-b", "0.0.0.0" ]