require 'sinatra'
set :bind, '10.0.1.9'
get '/' do 
	puts "whats up"
	erb :index
end