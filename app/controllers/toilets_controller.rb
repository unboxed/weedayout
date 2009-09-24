class ToiletsController < ApplicationController
  
  def new
    @toilet = Toilet.new
  end
  
  def create
    @toilet = Toilet.new(params[:toilet])
    @toilet.save
    flash[:notice] = "Toilet created"
    redirect_to toilets_path
  end
end
