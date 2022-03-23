class DockingStation
  attr_reader :bike

  def release_bike
    @bike = Bike.new
  end
  def dock_bike
    @bike = 'dock bike'
  end
end

class Bike
  def working?
    true
  end
end
