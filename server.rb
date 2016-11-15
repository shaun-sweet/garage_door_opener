require 'sinatra'
set :bind, '10.0.1.55'
get '/' do
	puts "whats up"
	erb :index
end

get '/open' do
	system("python ~/projects/garage_door_opener/t.py")
	redirect '/'
end
