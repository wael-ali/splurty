class ApiController < ActionController::Base
    
  def words
    @words = Word.order(created_at: :desc)
    render json: @words
  end

  def codes
    @codes = Code.order(created_at: :desc)
    render json: @codes
  end
end