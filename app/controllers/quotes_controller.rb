class QuotesController < ApplicationController
  def index

    @quote = Quote.order("RANDOM()").first
    
  end

  

  def create
    @quote = Quote.create(quote_params)

    if @quote.invalid?
      flash[:error] = '<strong>Could not  save ...</strong>
      <br> the data you entered is invalid !!!!
      <br> For the Quote : between 3 - 140 charechters
      <br> For the Auther : between 3 - 50 charechters '
      
    end

    redirect_to root_path
    
  end

  def about
    
  end

  private
  def quote_params
    params.require(:quote).permit(:saying, :auther)
    
  end
end
