class AdminController < ApplicationController
  before_filter :authenticate

  def index
    #@toilets = Toilet.find(:all)
    @toilets = Toilet.paginate :page => params[:page], :per_page => 10, :order => 'name ASC'
  end

  private
   def authenticate
      authenticate_or_request_with_http_basic do |id, password|
          id == "admin" && password == "bunny"
      end
   end
end
