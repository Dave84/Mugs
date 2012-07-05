class MugsController < ApplicationController  

  def index
    @mugs = Mug.all
  end

  def new
    @mug = Mug.new
    @mug.mugphotos.build
  end
  
  def show
    @mug = Mug.find(params[:id])
  end

  def create
    @mug = Mug.create(params[:mug])
    if @mug.save
      flash[:notice] = 'Mug added'
      redirect_to mugs_path
    else
      render :action => :new
    end
  end

  def edit
    @mug = Mug.find(params[:id])
    @mug.mugphotos.build
  end

  def update
    @mug = Mug.find(params[:id])
    @mug.attributes = params[:mug]
     if @mug.save!
      flash[:notice] = 'Mug updated successfully'
      redirect_to mugs_path(@mug)
    end
  end
end
