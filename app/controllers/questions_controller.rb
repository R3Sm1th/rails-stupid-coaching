class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work right now!' || @question == 'I am going to work right now!'.upcase
      @answer = ""
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif !@question.include?('?')
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
