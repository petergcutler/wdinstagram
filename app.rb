require "sinatra"
require "sinatra/reloader"
require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "models/entry"
require_relative "config/db"
require_relative "config/seeds"

# index
get "/" do
  @entries = Entry.all
  erb :index
end

# new
get "/entries/new" do
  @entry = Entry.new
  erb :new
end

# create
post "/entries" do
  @entry = Entry.new( params[:entry] )
  @entry.date_taken = Time.now.strftime("%F")
  if @entry.save
    redirect "entries/#{@entry.id}"
  else
    redirect "posts/new"
  end
end

# edit
get "/entries/:id/edit" do
  @entry = Entry.find( params[:id] )
  erb :edit
end

# update
put "/entries/:id" do
  @entry = Entry.find( params[:id] )
  @entry.update( params[:entry] )
  redirect "/entries/#{@entry.id}"
end

# show
get "/entries/:id" do
  @entry = Entry.find( params[:id] )
  erb :show
end

# delete
delete "entry/:id" do
  @entry = Entry.find( params[:id] )
  @entry.destroy
  redirect "/"
end
