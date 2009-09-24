Given /^a valid toilet called "([^\"]*)"$/ do |name|
  Toilet.create! :name => name, :address => "London", :lat => 0.0004, :long => 52.03744
end

Given /^the toilet "([^\"]*)" is located at (\d+\.\d+), (\d+\.\d+)$/ do |name, lat, long|
  toilet = find_or_create(Toilet, :name => name)
  toilet.lat = lat
  toilet.long = long
  toilet.save!
end

Given /^geokit will return (\d+\.\d+), (\d+\.\d+) when passed "([^\"]*)"$/ do |lat, long, search|
  geoloc = Geokit::GeoLoc.new
  geoloc.stub!(:lat).and_return(lat)
  geoloc.stub!(:lng).and_return(long)
  geoloc.stub!(:success).and_return(true)
  Geokit::Geocoders::MultiGeocoder.should_receive(:geocode).and_return(geoloc)
end
