require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/Monday' do
  'Oi!'
end

get '/route66' do
  'road trip!'
end

get '/give_and_go' do
  'dodge'
end

get '/random-cat' do
  @random = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @random = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:form_alone)
end
