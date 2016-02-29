ENV['ALCHEMY_SERVICE_NAME'] = 'helloworld.service'
ENV['ALCHEMY_RESOURCE_PATHS'] = '/v1/hello'

require 'alchemy-flux'
require './service'
run Sinatra::Application