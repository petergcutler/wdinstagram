get '/' do
  @entries = Entry.all
  erb :index
end

get '/new' do
  erb :new
end

get '/:id' do
  @entry = Entry.find(params[:id])
  erb :show
end

post '/' do
  @entry = Entry.create(params[:entry])
  redirect "/#{@entry.id}"
  # Same as redirect "/artists/" + @artist.id.to_s
end

get '/:id/edit' do
  @entry = Entry.find(params[:id])
  erb :edit
end

put "/:id" do
  @entry = Entry.find(params[:id])
  @entry.update(params[:entry])
  redirect "/#{@entry.id}"
end

delete '/:id' do
  @entry = Entry.find(params[:id])
  @entry.destroy
  redirect "/"
end

get '/:author' do
  @author = Entry.find_by(author:"")
  @entries = Entry.find(params[:author])
  erb :author
end
