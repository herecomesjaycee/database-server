require 'sinatra/base'
require 'json'

class DatabaseServer < Sinatra::Base
  DATA = {}
  enable :sessions

  get '/' do
    'Hello DatabaseServer!'
  end

  get '/set' do
    params.each { |key, value| DATA.merge!(key => value) }
  end

  get '/get' do
    content_type :json
    DATA[params[:key]].to_json
  end

  run! if app_file == $DatabaseServer
end
