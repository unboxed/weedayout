Given /^a valid toilet called "([^\"]*)"$/ do |name|
  Toilet.create! :name => name, :address => "London", :lat => 0.0004, :long => 52.03744
end
