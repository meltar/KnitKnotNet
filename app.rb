require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'pony'

enable :sessions
 
get "/" do
  erb :index
end

get "/about" do
  erb :about
end

get "/contact" do
  erb :contact
end

post "/contactme" do
  name = params[:name]
  mail = params[:mail]
  body = params[:body]

  Pony.mail(to: 'knitknotnet@gmailc.com', from: "#{mail}", subject: "Contact form submission from #{name}", body: "#{body}")

  erb :contactme
end
