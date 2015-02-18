require 'rspec'
load 'lib/timer.rb'

time_stub = Time.new(1999, 12, 31, 23, 59, 59, "+00:00")

describe 'Timer', "#new" do
  it "does not have set instance variables" do
    timer = Timer.new
    expect(timer.instance_variable_get(:@start_time)).to eq nil
    expect(timer.instance_variable_get(:@end_time)).to eq nil
    expect(timer.instance_variable_get(:@elapsed)).to eq nil
  end
end

describe 'Timer', "#start" do
  it 'Should set a start time' do
    timer = Timer.new
    allow(timer).to receive(:start) {time_stub}
    start_time = timer.start
    expect(start_time).to be_an_instance_of(Time)
    expect(start_time.year).to eq 1999
    expect(start_time.month).to eq 12
    expect(start_time.day).to eq 31
    expect(start_time.hour).to eq 23
    expect(start_time.min).to eq 59
    expect(start_time.sec).to eq 59
  end
end

describe 'Timer', "#end" do
  it 'Should set an end time' do
    timer = Timer.new
    allow(timer).to receive(:end) {time_stub}
    end_time = timer.end
    expect(end_time).to be_an_instance_of(Time)
    expect(end_time.year).to eq 1999
    expect(end_time.month).to eq 12
    expect(end_time.day).to eq 31
    expect(end_time.hour).to eq 23
    expect(end_time.min).to eq 59
    expect(end_time.sec).to eq 59
  end
end

describe 'Timer', "#end" do
  it 'Should have an elapsed time if start and end times have been set' do
    timer = Timer.new
    Time.stub(:now).and_return(time_stub)
    timer.start
    Time.unstub(:now)
    Time.stub(:now).and_return(time_stub + 1)
    timer.end
    Time.unstub(:now)
    elapsed = timer.elapsed
    expect(elapsed).to eq 1
  end
end