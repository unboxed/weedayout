class EntryController < ApplicationController

  protect_from_forgery :only => [:create, :update, :destroy]
  
  def index
    @toilets = Toilet.find(:all)
  end

  def show
    @toilet = Toilet.find(params[:id])

    render :partial => 'show'
  end

  def test
    
  end

end
