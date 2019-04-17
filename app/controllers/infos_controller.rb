class InfosController < ApplicationController

  def index
    @infos = Info.all
  end

  def new
    @info = Info.new
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

  private

  def info_params
    params.require(:info).permit(:title)
  end
end
