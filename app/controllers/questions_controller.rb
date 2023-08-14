class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
    @question
  end

  def answer
    @question = params[:question]
    unless @question.nil?
      if @question === "I am going to work"
        @answer = 'Great!'
      elsif @question.include?('?')
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
      @answer
    end
  end
end
