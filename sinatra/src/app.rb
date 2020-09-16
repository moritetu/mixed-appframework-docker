require "sinatra"
require "sinatra/reloader"
require 'json'

$stdout.sync = true

get '/*' do
  @title = "Ruby Sinatra"
  @content = JSON.pretty_generate(request.env)
  erb :h
end
