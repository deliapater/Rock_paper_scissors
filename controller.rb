require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/game')
also_reload('./models/*')

get '/' do
  erb (:home)
end

get '/rules' do
  erb (:rules)
end

get '/play/:player_input/:pc_input' do
  game = Game.new(params[:player_input], params[:pc_input])
  @results = game.play()
  erb (:results)
end
