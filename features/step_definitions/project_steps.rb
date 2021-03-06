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

Then /^I should see the following table "(.*)":$/ do |table, expected_table|
  expected_table.diff!(tableish("table##{table} tr", 'td,th'))
end

Then /^I should be redirected to "(.*)"$/ do |url|
  response.should redirect_to(url)
end



Then /^the URL should contain "([^"]*)"$/ do |arg1|
  request.url.should contain(arg1)
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

When /^I visit "(.+)"$/ do |path|
  visit path
end

Then /^I should see a page title of: "([^"]+)"$/ do |title|
  response.should have_tag("title", title)
end

Then %r{^I should see "([^"]+)" as the "([^"]+)" time$} do |time, field|
  time = Time.parse(time)

  id_prefix = webrat_session.current_scope.send(:locate_id_prefix, :from => field) do
    hour_field = FieldByIdLocator.new(webrat_session, webrat_session.dom, /(.*?)_#{Webrat::Scope::DATE_TIME_SUFFIXES[:hour]}$/).locate
    raise NotFoundError.new("No time fields were found") unless hour_field && hour_field.id =~ /(.*?)_4i/
    $1
  end

  field_with_id("#{id_prefix}_#{Webrat::Scope::DATE_TIME_SUFFIXES[:hour]}").value.should == time.hour.to_s.rjust(2, '0')
  field_with_id("#{id_prefix}_#{Webrat::Scope::DATE_TIME_SUFFIXES[:minute]}").value.should == time.min.to_s.rjust(2, '0')
end
