require('sinatra')
require('sinatra/contrib/all')

require_relative('models/customer')
require_relative('models/film')
require_relative('models/ticket')
require_relative('models/screening')


also_reload('./models/*')

get '/films' do
  @film_list = Film.all()
  erb(:index)
end

get '/films/:id' do
  @film = Film.find(params[:id])
  erb(:film_details)
end
