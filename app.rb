require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  set :port, 4000
  enable :sessions

  get '/' do
    "We're live!"
  end

  get '/set' do
    parameters = request.query_string.split("=")
    session[:somekey] = parameters[0]
    session[:somevalue] = parameters[1]
  end

  get '/get' do
    session[:somekey]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
