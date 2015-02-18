require 'rspec'
load 'lib/sender.rb'

describe 'Sender', "#initialize" do
  
  it "has a request_time variable initialized to nil" do
    sender = Sender.new('http://example.com')
    expect(sender.request_time).to eq nil
  end

  it "has a response variable initialized to nil" do
    sender = Sender.new('http://example.com')
    expect(sender.response).to eq nil
  end
end