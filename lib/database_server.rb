require 'sinatra/base'
require 'json'

class DatabaseServer < Sinatra::Base
	DATA = {}
	enable :sessions

	get '/' do
		'Hello DatabaseServer!'
	end

	get '/set' do
		params.each{|key,value| DATA.merge!({key => value})}
	end
  		
  	get '/get' do
  		 content_type :json
  		 DATA[params[:key]].to_json
  	end
  # start the server if ruby file executed directly
  run! if app_file == $0

end
