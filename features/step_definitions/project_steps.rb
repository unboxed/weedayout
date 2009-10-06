Then /^I should see the following text:$/ do |text_table|
  text_table.hashes.each do |hash|
    hash.each do |k,v|
      response.should contain(hash[:text])
    end
  end
end

Then /^I should see the following elements with content:$/ do |element_table|
  element_table.hashes.each do |hash|
    within(hash["element"]) do |content|
      content.should contain(hash["content"])
    end
  end
end

Then /^I should see the "(.*)" table like this:$/ do |selector, table|
  table.diff!(table_at(selector).to_a)
end

Then /^my url should end with "(.*)"$/ do |expected_suffix|
  len = expected_suffix.length
  url = URI.parse(current_url).path
  actual_suffix = url[url.length - len, url.length - 1]
  actual_suffix.should == expected_suffix
end

Given /^I am logged in$/ do
  basic_auth('admin', 'bunny')
end

When /^I visit "(.+)"$/ do |path|
  visit path
end