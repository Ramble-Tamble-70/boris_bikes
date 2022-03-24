require 'docking_station.rb'

describe DockingStation do
  it 'check docking station realeases bike' do
  expect(DockingStation.new).to respond_to(:release_bike)
  end
  it 'release bike' do
   @bike = subject.release_bike
   expect(@bike).to be_working
  end
    it {is_expected.respond_to? 'dock_bike'}
    it 'dock bike' do
      expect(DockingStation.new).to respond_to(:dock_bike).with(1).argument
  end
end