class EntryController < ApplicationController

  protect_from_forgery :only => [:create, :update, :destroy]
  
  def index
    @toilets = Toilet.find(:all)

    @recents_updated = Toilet.find(:all, :order => "updated_at", :limit => 3).reverse
    @recents_created = Toilet.find(:all, :order => "created_at", :limit => 3).reverse
  end

  def show
    @toilet = Toilet.find(params[:id])

    render :partial => 'show'
  end

  def test
    
  end

end
