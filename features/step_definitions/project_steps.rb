Then /^I should see the following text:$/ do |text_table|
  text_table.raw.flatten.each do |text|
    response.should contain(text)  
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


Then /^I should see the form filled in like this:$/ do |element_table|
  element_table.rows_hash.each do |field, value|
    # assume "true" and "false" are check boxes
    if value == "true" then
      field_labeled(field).should be_checked
    elsif value == "false" then
      field_labeled(field).should_not be_checked
    else
      field_labeled(field).value.should == value
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

When /^I visit "(.+)"$/ do |path|
  visit path
end