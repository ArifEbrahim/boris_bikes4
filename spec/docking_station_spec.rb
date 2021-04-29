require "./lib/docking_station.rb"

RSpec.describe DockingStation do
  it {is_expected.to respond_to(:release_bike) } 

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
    expect(subject.dock(bike)).to eq bike
  end

  # it { is_expected.to respond_to(:bike) }
  it "returns docked bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end


end