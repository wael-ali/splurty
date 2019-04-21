class ApiController < ActionController::Base
    
  def words
    words = Word.order(created_at: :desc)
    render json: {status: 'SUCCESS', message: 'Loaded words', data: words}, status: :ok
  end

  def codes
    @codes = Code.order(created_at: :desc)
    render json: @codes
  end
end