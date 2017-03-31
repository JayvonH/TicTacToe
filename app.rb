require 'sinatra'
require_relative "board.rb"
enable :sessions
get '/' do
	erb :intro
end

post '/player 1' do
	p1_name = params[:p1_name]
	redirect '/player2?p1_name='+p1_name
end
get '/player2' do
	p1_name = params[:p1_name]
	erb :p2name,locals: {p1_name: p1_name}
end
post '/player2' do
	session[:p1_name] = params[:p1_name]
	session[:p2_name] = params[:p2_name]
	session[:board] = Board.new
	#"#{session[:p1_name]} and #{session[:p2_name]}"
	redirect '/gameplayroute'

end

get '/gameplayroute' do
	erb :gameboard, locals: {board: session[:board].gameboard}
end