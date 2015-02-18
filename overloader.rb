require 'sinatra'

# Overloader is a simple web app for testing data applications.
# At its core, it is designed to send data, validate that data, and cleanup
# after itself once its done. It will report on the time it takes to send data
# (request response time), percentage of messages that succeeded and failed
# (data accuracy), and the type of data it sent. 

get '/' do
  erb :index
end
