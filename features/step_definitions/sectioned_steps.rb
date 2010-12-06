Then %r{^I should see "([^\"]+)" inside (.*)$} do |content, section|
  Then %{I should see "#{content}" within "#{section_for(section)}"}
end

When %r{^I follow "([^\"]+)" inside (.*)$} do |link_text, section|
  Then %{I follow "#{link_text}" within "#{section_for(section)}"}
end
