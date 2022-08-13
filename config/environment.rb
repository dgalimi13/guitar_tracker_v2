ENV['SINATRA_ENV'] ||= "development"
ENV['RAILS_ENV'] = ENV['SINATRA_ENV']

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

set :environment, ENV['SINATRA_ENV'].to_sym

database_config = {
    :development => {
        :adapter => "sqlite3",
        :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
    }
}