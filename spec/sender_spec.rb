require 'rspec'
load 'lib/sender.rb'

describe 'Sender', "#initialize" do
  sender = Sender.new('http://example.com')

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