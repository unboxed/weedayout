module SectionHelpers
  # Maps a name to a section. Used by the step definitions in sectioned_steps.rb
  def section_for(section_name)
    case section_name

    when /the recently added facilities list/
      '#recently_added_facilities'

    when /the row for toilet "([^\"]+)"/
      "##{ActionController::RecordIdentifier.dom_id(Toilet.find_by_name($1))}"

    else
      raise "Can't find mapping from \"#{section_name}\" to a section.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(SectionHelpers)
