Given /the following content blocks exist:/ do |object_table|
  object_table.hashes.each do |hash|
    ContentBlock.create! hash
  end
end