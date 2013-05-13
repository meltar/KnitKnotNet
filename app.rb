require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

enable :sessions
 
get "/" do
  erb :index
end

get "/about" do
  erb :about
end
