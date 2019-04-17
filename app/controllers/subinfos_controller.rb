class SubinfosController < ApplicationController

  def index
    @subinfos = Subinfo.all
  end

  def new
    @subinfo = Subinfo.new
  end

  def show
    @subinfo = Subinfo.find(params[:id])
  end

  def create
    @subinfo = Subinfo.new(subinfo_params)
    if @subinfo.save
      flash[:notice] = 'Successfully created Subinfo.'

      redirect_to subinfos_path
    else
      render :new
    end
  end

  def edit
    @subinfo = Subinfo.find(params[:id])
  end

  def update
    @subinfo = Subinfo.find(params[:id])  
    if @subinfo.update_attributes(subinfo_params)
      redirect_to @subinfo, notice: 'Successfully updated subinfo'
    else
      render :edit
    end
  end

  private

  def subinfo_params
    params.require(:subinfo).permit(:title, :text, :img_position, :imgurl)
  end
end
