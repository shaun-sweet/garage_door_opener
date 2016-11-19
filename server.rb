require 'sinatra'
set :bind, '10.0.1.55'
set :port, 80
get '/' do
	erb :index
end

get '/open' do
  puts "Garage opening/closing"
	system("python /home/pi/projects/garage_door_opener/t.py")
	redirect '/'
end
