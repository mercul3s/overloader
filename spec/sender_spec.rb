require 'rspec'
load 'lib/sender.rb'

time_stub = Time.new(1999, 12, 31, 23, 59, 59, "+00:00")
host = 'http://example.com'

describe "Sender", "#new" do
  sender = Sender.new(host)

  it "has a request_time variable initialized to nil" do
    expect(sender.request_time).to eq nil
  end

  it "has a response variable initialized to nil" do
    expect(sender.response).to eq nil
  end

  it "has a timer variable initialized with a timer object" do
    expect(sender.instance_variable_get(:@timer)).to be_an_instance_of(Timer)
  end

  it "has a resource variable initialized with a RestClient object" do
    expect(sender.instance_variable_get(:@resource)).to be_an_instance_of(RestClient::Resource)
  end
end

describe "Sender", "#get_request" do
  sender = Sender.new(host)
  
  it "sets a value for @timer when get_request is called" do
    Time.stub(:now).and_return(time_stub)
  end

  it "sends a GET request" do
    pending
  end
end

describe 'Sender', "#post_request" do
  sender = Sender.new(host)
  
  it "sets a value for @timer when post_request is called" do
    Time.stub(:now).and_return(time_stub)
  end

  it "sends a POST request" do
    pending
  end
end
