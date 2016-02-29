require 'sinatra'

get '/v1/hello' do
  content_type :json
  {'hello' => 'world!'}.to_json
end