class PagesController < ApplicationController
  def index
      @content_block = ContentBlock.find_by_key("homepage blurb")
  end
end
