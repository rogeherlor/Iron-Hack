require 'sinatra'
require "sinatra/reloader" if development?
require 'imdb'

set :port, 3000
set :bind, '0.0.0.0'


get '/' do
	i = Imdb::Search.new("#{params[:input]}")
	movies = i.movies
	@movies08 = movies[0..8]
	erb :movies_erb
end
