require "bundler/setup"

require "sinatra"
require "sinatra/reloader"
require "pg"
require "active_record"
require "pry"

require_relative "models/entry"
require_relative "controllers/entries"
require_relative "db/connection"
