class ToiletsController < ApplicationController
  
  def index
    unless params[:location].blank?
      @toilets = Toilet.find(:all, :origin => params[:location]+" GB", :limit => 5, :order => "distance ASC")
    end
  end
  
  def new
    @toilet = Toilet.new
  end
  
  def create
    @toilet = Toilet.new(params[:toilet])
    if @toilet.save
      flash[:notice] = "Toilet created"
      redirect_to toilets_path
    else
      render :action => "new"
    end
  end
end
