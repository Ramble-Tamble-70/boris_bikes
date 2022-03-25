require_relative 'bike'

class DockingStation
  attr_reader :bike_rack

  def initialize
    @bike_rack = []
  end

  def release_bike
    if @bike_rack.empty? == true
      raise "No Bikes Available"
    else
      Bike.new
    end
  end
  def dock_bike(bike)
    if @bike_rack.count >= 20
      raise "Docking Station is full"
    else 
      @bike_rack << bike
    end
  end
end