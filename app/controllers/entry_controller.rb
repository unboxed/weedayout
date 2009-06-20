class EntryController < ApplicationController

  protect_from_forgery :only => [:create, :update, :destroy]
  
  def index
    @toilets = Toilet.find(:all)
  end

  def show
    @toilet = Toilet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @toilet }
    end
  end

end
