Then /^I should see the following text:$/ do |text_table|
  text_table.raw.flatten.each do |text|
    response.should contain(text)
  end
end

Then /^I should see the following text in order:$/ do |text_table|
  remaining_body_section = response.body
  text_table.raw.flatten.each do | text |
    remaining_body_section.include?(text).should be_true
    remaining_body_section = remaining_body_section.slice((remaining_body_section.index(text) + text.length)..(remaining_body_section.length-1))
  end
end

Then /^I should see the following elements with content:$/ do |element_table|
  element_table.rows_hash.each do |element, expected_text|
    within(element) do |actual_content|
      actual_content.should contain(expected_text)
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

Then /^I should see a page title of: "([^"]+)"$/ do |title|
  response.should have_tag("title", title)
end
