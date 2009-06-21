module EntryHelper

  def replace_stuff thing
    return thing.gsub(/(')/, "")
  end
end
