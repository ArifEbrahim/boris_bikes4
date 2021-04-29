require_relative 'bike'

class DockingStation
  DEFUALT_CAPACITY = 20

  attr_reader :bikes

  def initialize
    @bikes = []
  end
  
  def release_bike
    raise "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Docking Station Full" if full?
    @bikes << bike
  end

  private
  def full?
    @bikes.count >= DEFUALT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end