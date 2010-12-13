class ToiletsController < ApplicationController

  def index
    if params[:location].blank?
      @toilets = Toilet.find(:all, :limit => 3, :order => 'created_at DESC')
    else
      begin
        @toilets = Toilet.find(:all,:origin => params[:location]+ " GB",:limit => 3, :order => "distance ASC", :conditions => filter_conditions)
      rescue Geokit::Geocoders::GeocodeError
        flash[:errors] = "An error occurred when we looked up '#{params[:location]}'"
        redirect_to toilets_path
      end
    end
  end

  def new
    @toilet = Toilet.new
  end

  def create
    @toilet = Toilet.new(params[:toilet])
    flash[:errors] = "It appears you're a spam bot" if params[:spamcheck] != "rabbit"
    if @toilet.save && params[:spamcheck] == "rabbit"
      flash[:notice] = "Toilet created"
      redirect_to toilets_path
    else
      render :action => "new"
    end
  end

  def show
    @toilet = Toilet.find_by_permalink(params[:id])
    @display_index = (params[:index_value] || "0").to_i + 1
  end

  def edit
    @toilet = Toilet.find_by_permalink(params[:id])
  end
  
  def update
    @toilet = Toilet.find_by_permalink(params[:id])
    if @toilet.update_attributes(params[:toilet])
      flash[:notice] = "Toilet updated"
      redirect_to :action=>"edit"
    else 
      flash[:errors] = "Toilet was not updated"
      render :action => "edit"
    end
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
