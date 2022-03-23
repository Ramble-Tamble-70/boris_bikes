require 'docking_station.rb' # '/Users/nadia/Documents/Makers/boris_bikes/lib/docking_station.rb'

describe DockingStation do
  it {is_expected.respond_to? 'release_bike'}
  it 'release bike' do
   @bike = subject.release_bike
   expect(@bike).to be_working
  end
    it {is_expected.respond_to? 'dock_bike'}
    it 'dock bike' do
      Bike.new
      @bike = subject.dock_bike
  end
end