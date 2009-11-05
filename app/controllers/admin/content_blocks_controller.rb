class Admin::ContentBlocksController < ApplicationController
  def index
    @content_blocks = ContentBlock.paginate :page => params[:page], :per_page => 10, :order => '"key" ASC'
  end

  def new
    @content_block = ContentBlock.new
  end

  def edit
    @content_block = ContentBlock.find(params[:id])
  end

  def update
    @content_block = ContentBlock.find(params[:id])

    if @content_block.update_attributes(params[:content_block])
      flash[:notice] = "Content updated"
      redirect_to :action=>"index"
    else
      render :action => "edit"
    end

  end

  def create
    @content_block = ContentBlock.new(params[:content_block])
    if @content_block.save
      flash[:notice] = "Content created"
      redirect_to :action => "index"
    else
      render :action => "new"
    end
  end
end
