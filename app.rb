require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/restaurants" do
  @restaurants = Restaurant.all
  erb :index
end

get '/restaurants/:id' do
  restaurant_id = params[:id]
  @restaurant = Restaurant.find(restaurant_id)
  erb :show
end