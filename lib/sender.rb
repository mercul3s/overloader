require 'rest-client'
load 'lib/timer.rb'

# This class is responsible for handling all http requests
class Sender

  attr_accessor :request_time
  attr_accessor :response
  attr_accessor :timer

  def initialize(host)
    @resource     = RestClient::Resource.new(host)
    @timer        = Timer.new
    @request_time = nil
    @response     = nil
  end

  def get_request
    @timer.start
    @response = @resource.get
    @timer.end
    @request_time = @timer.elapsed
  end

  def post_request(payload)
    @timer.start
    @respons = @resource.post(payload)
    @timer.end
    @request_time = timer.elapsed
  end

end