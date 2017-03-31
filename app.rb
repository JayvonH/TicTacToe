require 'sinatra'

get '/' do
	erb :intro
end

post '/player 1' do
	p1_name = params[:p1_name]

end