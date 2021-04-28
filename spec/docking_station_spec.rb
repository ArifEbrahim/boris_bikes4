require "./lib/docking_station.rb"

RSpec.describe DockingStation do
  it {is_expected.to respond_to(:release_bike) } 

  it 'should release a bike when requested' do
    bike = subject.release_bike
    expect(bike).to be_working 
  end

  # it {is_expected.to respond_to(:dock).with(1).argument }
  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  # it { is_expected.to respond_to(:bike) }
  it "returns docked bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end