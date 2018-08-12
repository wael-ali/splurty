class WordsController < ApplicationController
  # beforeaction :get_word

  def index
    @words = Word.order(created_at: :desc)
  end
  def show
    @word = Word.find(params[:id])
  end
  def new
    @word = Word.new
  end
  def create
    @word = Word.create(word_params)
    redirect_to words_path
  end
  def edit
    @word = Word.find(params[:id])
  end
  def destroy
    @word = Word.find(params[:id])
    @word.destroy
    redirect_to words_path
  end
  def update
    @word = Word.find(params[:id])

    if @word.update_attributes(word_params)
      redirect_to word_path
    else
      render 'edit'
    end
  end

  private

  def word_params
    params.require(:word).permit(:name, :sourc_language, :target_language, :equivalent, :state, :scope)
  end

  def get_word
    Word.find(params[:id])
  end
end
