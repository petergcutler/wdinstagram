require "sinatra"
require "sinatra/reloader"
require "pg"
require "active_record"
require "pry"

require_relative "../models/entry"
require_relative "../config/db.rb"

Entry.destroy_all

gram_one = Entry.create( author: "Adrian", photo_url: "http://www.deism.com/images/Einstein_laughing.jpeg", date_taken: "2000-01-01" )
gram_two = Entry.create( author: "Jimmy", photo_url: "https://www.timeshighereducation.co.uk/sites/default/files/Pictures/web/x/y/e/The_Pick_120112.jpg", date_taken: "2000-02-02" )
