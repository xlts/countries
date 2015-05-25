require 'sinatra'
require 'sinatra/reloader'
require 'carmen'
#include Carmen

get '/' do

  @countries = Carmen::Country.all
  erb :index

end

get '/country/:id' do

  @this_country = Carmen::Country.all[params[:id].to_i]
  erb :country

end