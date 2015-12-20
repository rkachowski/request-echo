require 'sinatra'
require 'json'

set :bind, '0.0.0.0'

get '/*' do
  content_type :json
  JSON.pretty_generate(request.env)
end
