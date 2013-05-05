require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'haml'

enable :sessions

set :haml, :format =&gt; :html5
 
get "/" do
  haml :index
end