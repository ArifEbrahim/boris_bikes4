require "./lib/docking_station.rb"

describe DockingStation do
    describe "release_bike" do
      it "releases bike" do 
        docking_station = DockingStation.new
        expect(docking_station.release_bike).to eq(Bike.new)
      end
    end
end