require 'sinatra'

# For return 200 for preflight requests
options "*" do
  200
end

before do
  response.headers["Access-Control-Allow-Origin"]   = "*"
  response.headers["Access-Control-Allow-Methods"]  = "PUT, POST"
end

get '/' do
  status 200
  'I am alive!'
end