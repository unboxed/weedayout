class Admin::ToiletsController < ApplicationController
 # before_filter :authenticate

  def index
    @toilets = Toilet.paginate :page => params[:page], :per_page => 10, :order => 'name ASC'
  end

  def edit
    @toilet = Toilet.find_by_permalink(params[:id])
  end
  
  def destroy
    @toilet = Toilet.find_by_permalink(params[:id])
    if @toilet.destroy
      flash[:notice] = "Toilet deleted successfully"
      redirect_to :action=>"index"
    else
      flash[:notice] = "Deletion was unsuccessful"
    end
  end

  def update
    @toilet = Toilet.find_by_permalink(params[:id])

    if @toilet.update_attributes(params[:toilet])
      flash[:notice] = "Toilet updated"
      redirect_to :action=>"edit"
    else
      render :action => "edit"
    end
  end

  private

  def authenticate
    authenticate_or_request_with_http_basic do |id, password|
      id == "admin" && password == "bunny"
    end
  end
end
