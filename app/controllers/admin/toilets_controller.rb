class Admin::ToiletsController < ApplicationController
  before_filter :authenticate

  def index
    @toilets = Toilet.paginate :page => params[:page], :per_page => 10, :order => 'name ASC'
  end

  def show
    @toilet = Toilet.find_by_permalink(params[:id])
  end

  def update
    @toilet = Toilet.find_by_permalink(params[:id])
    if @toilet.update_attributes(params[:toilet])
      flash[:notice] = "Toilet updated"
    else
      flash[:notice] = "Well, something went wrong" #TODO
    end
    redirect_to :action => 'show', :id => @toilet
  end

  private
   def authenticate
      authenticate_or_request_with_http_basic do |id, password|
          id == "admin" && password == "bunny"
      end
   end
end
