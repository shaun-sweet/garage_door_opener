require 'sinatra'
set :bind, '10.0.1.16'
get '/' do 
	puts "whats up"
	erb :index
end