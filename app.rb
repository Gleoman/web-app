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

get '/cat' do
  erb(:index)
end
