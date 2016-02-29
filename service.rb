require 'sinatra'

get '/v1/hello' do
  content_type :json
  puts "Saying Hello"
  {'hello' => 'world!'}.to_json
end