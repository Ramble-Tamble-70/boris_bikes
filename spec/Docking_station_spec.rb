require 'docking_station.rb'

describe DockingStation do
  it 'check docking station releases bike' do
  expect(DockingStation.new).to respond_to(:release_bike)
  end
  it "release bike & check it's working" do
   # @bike_rack = subject.release_bike
   # expect(@bike).to be_working
  end
  it "doesn't release bike when none available" do
  expect {DockingStation.new.release_bike}.to raise_error(RuntimeError, "No Bikes Available")
  end
    it {is_expected.respond_to? 'dock_bike'}
    it 'dock bike' do
    expect(DockingStation.new).to respond_to(:dock_bike).with(1).argument
  end
  it 'cannot accept another bike if docking station full' do
  expect {DockingStation.new.dock_bike(Bike.new)}.to raise_error(RuntimeError, "Docking Station is full")
  end
end