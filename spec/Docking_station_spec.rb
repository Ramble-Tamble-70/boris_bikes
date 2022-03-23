require_relative '/Users/nadia/Documents/Makers/boris_bikes/lib/docking_station.rb'


describe DockingStation do
  it {is_expected.respond_to? 'release_bike'}
  it 'release bike' do
   bike = subject.release_bike
   expect(bike).to be_working
  end
end