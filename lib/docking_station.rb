require './lib/bike.rb'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(capacity= DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end
  
  def release_bike
    raise "No bikes available" if empty?
    @bikes.each {|bike| return bike if bike.working?}
    raise "No bikes available"
  end

  def dock(bike)
    raise "Docking Station Full" if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end

