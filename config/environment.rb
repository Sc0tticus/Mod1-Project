require 'sinatra/activerecord'
require 'require_all'
require 'pry'

require_all 'lib'

#Soundarya's setup
require 'bundler'
Bundler.require

require_all 'lib/models'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: "db/lyft_for_services.db"
)