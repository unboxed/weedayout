class ToiletsController < ApplicationController
  
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
