class PagesController < ApplicationController
  def index
      @content_block = ContentBlock.find_by_key("homepage blurb")
  end
  
  def about_us
    @content_block = ContentBlock.find_by_key("about_us blurb")
  end
end
