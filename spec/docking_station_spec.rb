require "./lib/docking_station.rb"

RSpec.describe DockingStation do
  it {is_expected.to respond_to(:release_bike) } 

  it 'should release a bike when requested' do
    bike = subject.release_bike
    expect(bike).to be_working 
  end

end