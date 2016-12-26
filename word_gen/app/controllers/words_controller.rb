class WordsController < ApplicationController

  def index
    session[:counter] = 0 if !session[:counter].present?
  end
 
    def create
      session[:random_word] = Array.new(14).map{|i| i = rand(65..90).chr}.join
      session[:counter] += 1
      redirect_to action:"index"
    end

end

