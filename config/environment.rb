ENV['SINATRA_ENV'] ||= "development"
ENV['RAILS_ENV'] = ENV['SINATRA_ENV']

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])