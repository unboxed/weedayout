class ToiletsController < ApplicationController
  
  def index
    unless params[:location].blank?
      @toilets = Toilet.find(:all, :origin => params[:location]+" GB", :limit => 5, :order => "distance ASC", :conditions => filter_conditions)
    end
  end
  
  def new
    @toilet = Toilet.new
  end
  
  def create
    @toilet = Toilet.new(params[:toilet])
    flash[:notice] = "It appears you're a spam bot" if params[:spamcheck] != "rabbit"
    if @toilet.save && params[:spamcheck] == "rabbit"
      flash[:notice] = "Toilet created"
      redirect_to toilets_path
    else
      render :action => "new"
    end
  end

  def show
    @toilet = Toilet.find_by_permalink(params[:id])
  end

  private
  
  def filter_conditions
    conditions = params[:hoist] ? ["hoist = ?", params[:hoist]] : [""]
    if params[:changingbench]
      if params[:hoist]
        conditions[0] += " AND changingbench = ?"
      else
        conditions[0] += "changingbench = ?"
      end
      conditions << params[:changingbench]
    end
    conditions
  end
end
