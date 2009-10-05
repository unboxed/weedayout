Then /^I should see the following text:$/ do |text_table|
  text_table.hashes.each do |hash|
    response.should contain(hash[:text])
  end
end

Then /^I should see the following elements with content:$/ do |element_table|
  element_table.hashes.each do |hash|
    within(hash["element"]) do |content|
      content.should contain(hash["content"])
    end
  end
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