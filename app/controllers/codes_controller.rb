class CodesController < ApplicationController

  def englishCode
    @codes = Code.order(created_at: :desc)
  end

  def index
    @codes = Code.order(created_at: :desc)
  end
  def show
    @code = Code.find(params[:id])
  end
  def new
    @code = Code.new
  end
  def create
    @code = Code.create(code_params)
    redirect_to codes_path
  end
  def edit
    @code = Code.find(params[:id])
  end
  def destroy
    @code = Code.find(params[:id])
    @code.destroy
    redirect_to codes_path
  end
  def update
    @code = Code.find(params[:id])

    if @code.update_attributes(code_params)
      redirect_to code_path
    else
      render 'edit'
    end
  end

  private

  def code_params
    params.require(:code).permit(:code, :description)
  end

  def get_word
    Code.find(params[:id])
  end
end
