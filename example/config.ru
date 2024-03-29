require 'bundler/setup'
require 'sinatra/base'
require 'omniauth-scienceexchange'

class App < Sinatra::Base
  get '/' do
    redirect '/auth/scienceexchange'
  end

  get '/auth/:provider/callback' do
    content_type 'application/json'
    MultiJson.encode(request.env)
  end

  get '/auth/failure' do
    content_type 'application/json'
    MultiJson.encode(request.env)
  end
end

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :scienceexchange, ENV['SCIENCEEXCHANGE_CONSUMER_KEY'], ENV['SCIENCEEXCHANGE_CONSUMER_SECRET']
end

run App.new
