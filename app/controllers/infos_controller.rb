class InfosController < ApplicationController

  def index
    @infos = Info.all
  end

  def new
    @info = Info.new
    3.times {
      @subinfo = @info.subinfos.build
      6.times {@listitem = @subinfo.listitems.build}
    }
  end

  def show
    @info = Info.find(params[:id])
  end

  def create
    @info = Info.new(info_params)
    if @info.save
      flash[:notice] = 'Successfully created info.'

      redirect_to infos_path
    else
      render :new
    end
  end

  def edit
    @info = Info.find(params[:id])
  end

  def update
    @info = Info.find(params[:id])  
    if @info.update_attributes(info_params)
      redirect_to @info, notice: 'Successfully updated info'
    else
      render :edit
    end
  end

  private

  def info_params
    params.require(:info).permit(:title, 
      subinfos_attributes: [
        :id, :title, :text, :img_position, :imgurl, :_destroy, 
        listitems_attributes: [:id, :content, :_destroy]
      ]
    )
  end
end
