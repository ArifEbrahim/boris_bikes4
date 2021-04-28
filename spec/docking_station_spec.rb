require "./lib/docking_station.rb"

RSpec.describe DockingStation do
    describe "release_bike" do
      it {is_expected.to respond_to(:release_bike) } 
    end

    
end