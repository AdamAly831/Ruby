class NumberController < ApplicationController
  def index
  session[:random] =rand(1..100) if !session[:random].present?
  end

  def create
    flash[:message] = 'You got it!'
    flash[:status] = false

    # Check if a number was submitted
    if params[:number].present?
      input_number = params[:number].to_i

      if input_number > session[:random] 
        flash[:message] = 'Too High'
      elsif input_number < session[:random]
        flash[:message] = 'Too Low'
      else
        session[:random]
        flash[:status] = true
      end
    else
      flash[:message] = 'number please'
    end

    redirect_to action: 'index'
  
  end
end
