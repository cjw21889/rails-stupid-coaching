class QuestionsController < ApplicationController

  def ask
  end

  def answer
    question = params[:answer]
    last = question.last

    if last == "?"
      @response = "Silly question, get dressed and go to work!"
    elsif question != "I am going to work"
      @response = "I don't care, get dressed and go to work!"
    else
      @response = "Great!"
    end
  end
end
