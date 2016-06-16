require 'bundler'
Bundler.require
require './main'
# require 'sinatra'
# require 'slim'
# require 'data_mapper'
DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")
run Sinatra::Application