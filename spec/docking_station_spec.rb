require "./lib/docking_station.rb"



RSpec.describe DockingStation do
  it {is_expected.to respond_to(:release_bike) } 

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
  
  describe "capacity check" do
   subject { DockingStation.new(34) }
   it 'has a variable capacity' do
   expect(subject.capacity).to eq 34
   end
  end

  describe "#release_bike" do
    it 'should release a working bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_working 
    end

    it "throws an error when empty + release bike" do
      expect {subject.release_bike}.to raise_error(RuntimeError)
    end
  end

  # it {is_expected.to respond_to(:dock).with(1).argument }
  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to include(bike)
  end

  it 'throws an error when full' do
    (subject.capacity).times { subject.dock(Bike.new) }
    expect {subject.dock(Bike.new)}.to raise_error(RuntimeError)
  end


  # it { is_expected.to respond_to(:bike) }
  it "returns docked bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to include(bike)
  end
end

