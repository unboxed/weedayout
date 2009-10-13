Given /^a valid toilet called "([^\"]*)"$/ do |name|
  Toilet.create! :name => name, :address => "London", :lat => 0.0004, :long => 52.03744
end

Given /^the toilet "([^\"]*)" is located at (\d+\.\d+), (\d+\.\d+)$/ do |name, lat, long|
  toilet = find_or_create(Toilet, :name => name)
  toilet.lat = lat
  toilet.long = long
  toilet.save!
end

Given /the following toilets exist:/ do |toilets_table|
  toilets_table.hashes.each do |hash|
    Toilet.create! hash
  end
end

Given /^the toilet "([^\"]*)" has a hoist$/ do |name|
  find_or_create(Toilet, :name => name).update_attribute(:hoist, true)
end

Given /^the toilet "([^\"]*)" has a changing bench$/ do |name|
  find_or_create(Toilet, :name => name).update_attribute(:changingbench, true)
end


Given /^geokit will return (\d+\.\d+), (\d+\.\d+) when passed "([^\"]*)"$/ do |lat, long, search|
  geoloc = Geokit::GeoLoc.new
  geoloc.stub!(:lat).and_return(lat)
  geoloc.stub!(:lng).and_return(long)
  geoloc.stub!(:success).and_return(true)
  Geokit::Geocoders::MultiGeocoder.stub!(:geocode).and_return(geoloc)
end

Given /^geokit will error when passed "([^\"]*)"$/ do |search|
  Geokit::Geocoders::MultiGeocoder.stub!(:geocode).and_raise(Geokit::Geocoders::GeocodeError)
end

When /^I pass the spam test$/ do
  When('I fill in "To prove you\'re not a spam bot, please put \'rabbit\' into this field" with "rabbit"')
end
