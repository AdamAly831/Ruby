class SurveysController < ApplicationController
  def index
    if !session[:views]
        session[:views] = 0
      end
  end

  def process_surveys
    session[:views] = session[:views] + 1
    session[:result] = params[:survey]
     flash[:success] = "Thanks for submitting this form! You have submitted this form #{ session[:views] } time(s) now."
        redirect_to '/surveys/result'
  end

  def result
    @success_message = flash[:success]
    @result = session[:result]
  end
end
