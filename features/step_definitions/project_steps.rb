Then /^I should see the following text:$/ do |text_table|
  text_table.raw.flatten.each do |text|
    response.should contain(text)
  end
end

Then /^I should see the following text in order:$/ do |text_table|
  prev = nil
  text_table.raw.flatten.each do |text|
    response.should contain(text)
    if (prev) then
      if Webrat.configuration.parse_with_nokogiri?
        document = Webrat.nokogiri_document(response.body)
      else
        document = Webrat.hpricot_document(response.body)
      end

      element = Webrat::XML.inner_text(document)

      error_message = "could not find '#{prev}' before '#{text}' in:\n#{element.gsub(/^\s*$/, "").squeeze("\n")}"
      (element.index(prev) < element.index(text)).should(be_true, error_message)
    end
    prev = text
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
