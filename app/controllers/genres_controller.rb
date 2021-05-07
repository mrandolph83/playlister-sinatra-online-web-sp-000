require 'sinatra/base'
require 'rack-flash'

class GenresController < Sinatra::Base
  enable :sessions
  use Rack::Flash
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/genres' do
    @genres = Genre.all
    erb :"genres/index"
  end

  get '/genres/new' do
    
    erb :"genres/new"
  end
end
